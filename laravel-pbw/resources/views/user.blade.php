@extends('layouts.main')
@section('title', 'User')
@section('content')
<table class="table table-hover">
    <thead>
        <tr>
            <th scope="col">#</th>
            <th scope="col">Nik User</th>
            <th scope="col">Nama User</th>
            <th scope="col">No Handphone</th>
            <th scope="col">Aksi</th>
        </tr>
    </thead>
    <tbody>
        @foreach ($user as $no => $d)
            <tr>
                <th scope="row">{{ $user->firstItem() + $no }}</th>
                <td>{{ $d->nik_user }}</td>
                <td style="text-transform: capitalize;">{{ $d->nama_user }}</td>
                <td>{{ $d->no_hp }}</td>
                <td>
                <a class="btn btn-outline-light" href="/user/edit/{{ $d->id }}" role="button" style="background-color: #A89B8C;"><i class="bi bi-pencil-square"></i></a>
                <a href="" class="btn btn-outline-light" style="background-color: #A89B8C;" data-toggle="modal" data-target="#popUp"><i class="bi bi-trash" ></i></a>
                    <div class="modal fade" id="popUp" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
                        <div class="modal-dialog modal-dialog-centered" role="document">
                            <div class="modal-content">
                            <div class="modal-header">
                                <h5 class="modal-title" id="exampleModalLabel">Confirmation</h5>
                                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                <span aria-hidden="true">&times;</span>
                                </button>
                            </div>
                            <div class="modal-body">
                                <h5>Are you sure you're going to delete this data?</h5>
                                <h5 style="color:#88816D">{{$d->nik_user}}-{{$d->nama_user}}</h5>
                            </div>
                            <div class="modal-footer">
                                <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                                <button class="btn btn-danger"><a style="color:#FFFFFF"href="/user/delete/{{$d->id}}">Delete Data</a></button>
                            </div>
                            </div>
                        </div>
                        </div>
                </td>
            </tr>
        @endforeach
    </tbody>
    </table>
    <span class="float-right">{{ $user->links() }}</span>
@endsection
@section('header')
<div class="card-header" style="background-color: #CBC6B3;">
<a name="" id="" class="btn btn-outline-light" href="/user/add" role="button" style="background-color: #A89B8C;border-color: #A89B8C;"><i class="bi bi-plus-square"></i> ADD DATA</a>
<form class="form-inline my-2 my-lg-0 float-right" method="GET" action="/user/cari">
<input class="form-control mr-sm-2" name= "cari" type="search" placeholder="Search" aria-label="Search">
<button class="btn btn-outline-light my-2 my-sm-0" type="submit" style="background-color: #A89B8C;border-color: #A89B8C;">Search</button>
</form>
@endsection