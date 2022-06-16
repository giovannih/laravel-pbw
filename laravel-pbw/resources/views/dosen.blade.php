@extends('layouts.main')
@section('title', 'Dosen')
@section('content')
<table class="table table-hover">
    <thead>
        <tr>
            <th scope="col">#</th>
            <th scope="col">NIDN</th>
            <th scope="col">Nama Dosen</th>
            <th scope="col">Status</th>
            <th scope="col">Jafung</th>
            <th scope="col">Pakar</th>
        </tr>
    </thead>
    <tbody>
        @foreach ($dosen as $no => $d)
            <tr>
                <th scope="row">{{ $dosen->firstItem() + $no }}</th>
                <td>{{ $d->nidn }}</td>
                <td>{{ $d->nama }}</td>
                <td>{{ $d->status }}</td>
                <td>{{ $d->jafung }}</td>
                <td>{{ $d->pakar }}</td>
            </tr>
        @endforeach
    </tbody>
    </table>
    <span class="float-right">{{ $dosen->links() }}</span>
@endsection
@section('header')
<div class="card-header" style="background-color: #CBC6B3;">
<a name="" id="" class="btn btn-outline-light" href="/dosen/add" role="button" style="background-color: #A89B8C;"><i class="bi bi-plus-square"></i> ADD DATA</a>
<form class="form-inline my-2 my-lg-0 float-right" method="GET" action="/dosen/cari">
<input class="form-control mr-sm-2" name= "cari" type="search" placeholder="Search" aria-label="Search">
<button class="btn btn-outline-light my-2 my-sm-0" type="submit" style="background-color: #A89B8C;">Search</button>
</form>
@endsection
@section('alert')
@if(session()->has('message'))
<div class="col-lg-12 py-4 align-self-center">
<div class="alert alert-success alert-dismissible fade show" role="alert">
  Data Input is Successful
  <button type="button" class="close" data-dismiss="alert" aria-label="Close">
    <span aria-hidden="true">&times;</span>
  </button>
</div>
</div>
@endif
@endsection
