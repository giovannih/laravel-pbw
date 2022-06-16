@extends('layouts.main')
@section('title', 'Formulir Edit Mahasiswa')
@section('content')
@php
  $bm = explode(',',$mahasiswa->bidang_minat);
@endphp
<form  method="POST" action="/mahasiswa/update/{{$mahasiswa->id}}" class="pt-2 pb-2">
      @csrf
      @method('PUT')
    <div class="form-group w-25">
        <label><b>NIM</b></label>
        <input type="number" name="nim" class="form-control" value="{{$mahasiswa->nim}}" readonly>
    </div>
    <div class="form-group w-25">
    <label  class="form-label"><b>Nama</b></label>
    <input name="nama" type="text" class="form-control" value="{{$mahasiswa->nama}}">
  </div>
  <label><b>Gender</b></label>
        <div class="form-check w-25">
            <input type="radio" name="gender" value="Laki-laki" {{ $mahasiswa->gender == 'Laki-laki' ? 'checked':''}}  
            class="form-check-input">
            <label>Laki-laki</label>
        </div>
        <div class="form-check w-25">
            <input type="radio" name="gender" value="Perempuan" {{ $mahasiswa->gender == 'Perempuan' ? 'checked':''}} class="form-check-input">
            <label>Perempuan</label>
        </div>
    <div class="form-group w-25">
    <label  class="form-label">Jurusan</label>
    <select name="jurusan" class="form-select" aria-label="Default select example">
        <option value="Sistem Informasi" {{ $mahasiswa->jurusan == 'Sistem Informasi' ? 'selected':''}} >Sistem Informasi</option>
        <option value="Informatika" {{ $mahasiswa->jurusan == 'Informatika' ? 'selected':''}}>Informatika</option>
        <option value="Pertanian" {{ $mahasiswa->jurusan == 'Pertanian' ? 'selected':''}}>Pertanian</option>
        <option value="Kedokteran" {{ $mahasiswa->jurusan == 'Kedokteran' ? 'selected':''}}>Kedokteran</option>
    </select>
  </div>
  <div class="form-group w-25">
    <label  class="form-label"><b>Bidang Minat</b></label>
    <div class="form-check">
  <input name="bm[]" class="form-check-input" type="checkbox" value="Olahraga" {{ in_array('Olahraga',$bm) ? 'checked':''}}>
  <label>Olahraga</label>
</div>
<div class="form-check">
  <input name="bm[]" class="form-check-input" type="checkbox" value="Membaca" {{ in_array('Membaca',$bm) ? 'checked':''}}>
  <label>Membaca</label>
</div>
<div class="form-check">
  <input name="bm[]" class="form-check-input" type="checkbox" value="Keseninan" {{ in_array('Keseninan',$bm) ? 'checked':''}}>
  <label>Kesenian</label>
</div>
<input type="submit" value="Save" class="btn btn-outline-primary">
<a href="/mahasiswa" class="btn btn-outline-danger" role="button">Go Back</a>
</div>
</form>
@endsection