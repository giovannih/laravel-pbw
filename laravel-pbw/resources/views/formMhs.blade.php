@extends('layouts.main')
@section('title', 'Formulir Add Mahasiswa')
@section('content')
<form  method="POST" action="/mahasiswa/save" class="pt-2 pb-2">
      @csrf
    <div class="form-group w-25">
        <label><b>NIM</b></label>
        <input type="number" name="nim" class="form-control" placeholder="Masukkan NIM" required>
    </div>
    <div class="form-group w-25">
    <label  class="form-label"><b>Nama</b></label>
    <input name="nama" type="text" class="form-control" placeholder="Masukkan Nama" required>
  </div>
  <label><b>Gender</b></label>
        <div class="form-check w-25">
            <input type="radio" name="gender" value="Laki-laki"  class="form-check-input">
            <label>Laki-laki</label>
        </div>
        <div class="form-check w-25">
            <input type="radio" name="gender" value="Perempuan" class="form-check-input">
            <label>Perempuan</label>
        </div>
    <div class="form-group w-25">
    <label  class="form-label">Jurusan</label>
    <select name="jurusan" class="form-select" aria-label="Default select example">
        <option value ="0" selected>Pilih Jurusan</option>
        <option value="Sistem Informasi">Sistem Informasi</option>
        <option value="Informatika">Informatika</option>
        <option value="Pertanian">Pertanian</option>
        <option value="Kedokteran">Kedokteran</option>
    </select>
  </div>
  <div class="form-group w-25">
    <label  class="form-label"><b>Bidang Minat</b></label>
    <div class="form-check">
  <input name="bm[]" class="form-check-input" type="checkbox" value="Olahraga">
  <label>Olahraga</label>
</div>
<div class="form-check">
  <input name="bm[]" class="form-check-input" type="checkbox" value="Membaca">
  <label>Membaca</label>
</div>
<div class="form-check">
  <input name="bm[]" class="form-check-input" type="checkbox" value="Keseninan">
  <label>Kesenian</label>
</div>
<input type="submit" value="Save" class="btn btn-outline-primary">
<a href="/mahasiswa" class="btn btn-outline-danger" role="button">Go Back</a>
</div>
</form>
@endsection