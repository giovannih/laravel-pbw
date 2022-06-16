<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

use App\Mahasiswa;

class MhsController extends Controller
{
    public function mhs(){

        $mahasiswa = Mahasiswa::orderByDesc('id')->paginate(10);
       return view('mahasiswa',['mahasiswa'=>$mahasiswa],['cek' => 'mahasiswa']);
    }
    public function cari(Request $request){

        $cari = $request->cari;
       $mahasiswa = Mahasiswa::where('nama','like','%'.$cari.'%')->orwhere('nim','like','%'.$cari.'%')->paginate();
       return view('mahasiswa',['mahasiswa'=>$mahasiswa],['cek' => 'mahasiswa']);
    }
    public function formmhs(){

       return view('formMhs',['cek' => 'mahasiswa']);
    }
    public function saveMhs(Request $req){
        $bm = implode(',',$req->bm);
        Mahasiswa::create([
            'nim'=>$req->nim,
            'nama'=>$req->nama,
            'gender'=>$req->gender,
            'jurusan'=>$req->jurusan,
            'bidang_minat'=>$bm
        ]);
       return redirect('/mahasiswa')->with('message','test');
}
    public function editMhs($id){
        $mahasiswa = Mahasiswa::find($id);
        return view('formEditMhs',['mahasiswa'=>$mahasiswa],['cek' => 'mahasiswa']);
    }
    public function updateMhs($id, Request $req){
        $bm = implode(',',$req->bm);
        
        $mhs = Mahasiswa::find($id);
        
        $mhs->nim = $req->nim;
        $mhs->nama = $req->nama;
        $mhs->gender = $req->gender;
        $mhs->jurusan = $req->jurusan;
        $mhs->bidang_minat = $bm;
        $mhs->save();
        
        return redirect('/mahasiswa')->with('message','edit');
    }
    public function deleteMhs($id){
        $mhs = Mahasiswa::find($id);
        $mhs->delete();

        return redirect('/mahasiswa')->with('message','delete');
    }
}