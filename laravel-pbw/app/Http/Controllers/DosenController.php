<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

use App\Dosen;

class DosenController extends Controller
{   
    public function dosen(){
        $dosen = Dosen::paginate(5);
        return view ('dosen',['dosen'=>$dosen],['cek' => 'dosen']);
        // return $dosen;
    }
    public function cari(Request $req){
        $cari = $req -> cari;
        $dosen = Dosen::where('nama', 'like', '%'.$cari.'%')->paginate();
        return view('dosen', ['dosen' => $dosen],['cek' => 'dosen']);
    }
    public function form(){
        return view('formDsn',['cek' => 'dosen']);
    }
    public function saveDosen(Request $req){
        $pakar = implode(',',$req->get('pakar'));
        Dosen::create([
            'nidn' => $req->nidn,
            'nama' => $req->nama,
            'status' => $req->status,
            'jafung' => $req->jafung,
            'pakar' => $pakar
        ]);
        return redirect("/dosen")->with('message','test');

    }
}
