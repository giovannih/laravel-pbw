@extends('layouts.main')
@section('title', 'Home')

@section('header')
<div class="card-header" style="background-color: #cbc6b3;">
<h4 style="">Header Home</h4>
@endsection

@section('content')
<h1 style="text-align:center;text-transform: capitalize;"><b>Welcome to the Dashboard {{Auth::user()->nama_user ?? ''}}</b></h1>

@endsection