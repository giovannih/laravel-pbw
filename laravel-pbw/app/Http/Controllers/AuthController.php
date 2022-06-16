<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use App\User;
use Illuminate\Support\Facades\Validator;

class AuthController extends Controller
{
    public function user(){
        $user = User::paginate(5);
        return view('user',['user' => $user],['cek' => 'home']);
    }
    public function formUser(){

        return view('formUser');
     }
     public function login(){

        return view('login');
     }
     public function saveUser(Request $req){
        User::create([
            'nik_user'=>$req->nik_user,
            'nama_user'=>$req->nama_user,
            'no_hp'=>$req->no_hp,
            'password'=>bcrypt($req->password)
        ]);
       return redirect('/user')->with('message','test');
}
     public function ceklogin(Request $req){
        $validator = Validator::make($req->all(), [
            'no_hp' => 'required',
            'password' => 'required',
        ]);
 
        // // Retrieve the validated input...
        $validated = $validator->validated();
        //  dd($validated);
        if(!Auth::attempt($validated)){
            return redirect('/');
        }
        else{
            return redirect('/home');
        }  
        // ---- MD 5 HASH     
        // $user = USer::where('no_hp', $req->no_hp)
        // ->where('password',md5($req->password))
        // ->first();
        // if ($user){
        //     Auth::login($user);
        //     return redirect('/home');
        // } else {
        //     return redirect('/login');
        // }
    }
     public function logout(){
        Auth::logout();
        return redirect('/')->with('message','logout');
     }
     public function editUser($id){
        $user = user::find($id);
        return view('formEditUser',['user'=>$user],['cek' => 'home']);
    }
    public function updateUser($id, Request $req){        
        $user = user::find($id);
        
        $user->nik_user = $req->nik_user;
        $user->nama_user = $req->nama_user;
        $user->no_hp = $req->no_hp;
        $user->save();
        
        return redirect('/user')->with('message','edit');
    }
    public function deleteUser($id){
        $user = user::find($id);
        $user->delete();

        return redirect('/user')->with('message','delete');
    }
}
