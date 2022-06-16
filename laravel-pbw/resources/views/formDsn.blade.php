@extends('layouts.main')
@section('title', 'Formulir Add Dosen')
@section('content')
<!-- <div class="container-fluid mt-4 rounded"> -->
          <form  method="POST" action="/dosen/save" class="pt-2 pb-2">
          @csrf
        <div class="form-group w-25">
            <label><b>NIDN</b></label>
            <input type="number" name="nidn" class="form-control" placeholder="Masukkan NIDN" required>
        </div>
        <div class="form-group w-25">
        <label><b>Nama Dosen</b></label>
            <input type="text" name="nama" class="form-control" placeholder="Masukkan Nama" required>
        </div>
        <label><b>Status</b></label>
        <div class="form-check w-25">
            <input type="radio" name="status" value="Dosen Tetap"  class="form-check-input">
            <label>Dosen Tetap</label>
        </div>
        <div class="form-check w-25">
            <input type="radio" name="status" value="Dosen Tidak Tetap" class="form-check-input">
            <label>Dosen Tidak Tetap</label>
        </div>
        <div class="form-group w-25">
            <label><b>Jabatan Fungsional</b></label>
            <select name="jafung" class="form-control">
                <option value="0">Jabatan</option> 
                <option value="Tenaga Pengajar">Tenaga pengajar</option> 
                <option value="Asisten Ahli">Asisten Ahli</option> 
                <option value="Lektor">Lektor</option> 
                <option value="Lektor Kepala">Lektor Kepala</option> 
                <option value="Guru Besar ">Guru Besar</option>    
            </select>
        </div>
     <label><b>Bidang Keahlian</b></label>
                <div class="form-check w-25">
            <input type="checkbox" name="pakar[]" value="Artificial Intelligence"  class="form-check-input">
            <label>AI</label>
                </div>
                <div class="form-check w-25">
            <input type="checkbox" name="pakar[]" value="Web Engineer"  class="form-check-input">
            <label>Web Engineer</label>
                </div>
                <div class="form-check w-25">
            <input type="checkbox" name="pakar[]" value="DB Engineer"  class="form-check-input">
            <label>DB Engineer</label>
        </div>
        <div class="form-group pt-4">
        <input type="submit" value="Save" class="btn btn-outline-primary">
        <a href="/dosen" class="btn btn-outline-danger" role="button">Go Back</a>

</div>
          </form>
      <!-- </div> -->
@endsection