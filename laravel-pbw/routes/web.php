<?php
/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/
Route::get('/main', function () {
    return view('layouts.main', ['cek' => 'home']);
});
Route::get('/home', function () {
    return view('/home', ['cek' => 'home']);
})->middleware('auth');
Route::get('/dosen','DosenController@dosen');
Route::get('/dosen/add','DosenController@formDsn');
Route::post('/dosen/save','DosenController@saveDosen');
Route::get('/dosen/cari','DosenController@cari');

Route::get('/mahasiswa','MhsController@mhs')->middleware('auth');
Route::post('/mahasiswa/save','MhsController@saveMhs');
Route::get('/mahasiswa/cari','MhsController@cari');
Route::get('/mahasiswa/add','MhsController@formMhs');
Route::get('/mahasiswa/edit/{id}','MhsController@editMhs');
Route::get('/mahasiswa/delete/{id}','MhsController@deleteMhs');
Route::put('/mahasiswa/update/{id}','MhsController@updateMhs');

Route::get('/matakuliah','MatakuliahController@matakuliah');

Route::get('/user','AuthController@user')->middleware('auth');
Route::get('/user/add','AuthController@formUser')->middleware('auth');
Route::post('/user/save','AuthController@saveUser')->middleware('auth');
Route::get('/','AuthController@login')->middleware('guest')->name('login');
Route::post('/user/ceklogin','AuthController@ceklogin')->middleware('guest');
Route::get('/user/edit/{id}','AuthController@editUser');
Route::put('/user/update/{id}','AuthController@updateUser');
Route::get('/user/delete/{id}','AuthController@deleteUser');
Route::get('/logout','AuthController@logout')->middleware('auth');

// Route::get('/mahasiswa','MhsController@mhs');
// Route::get('/user','AuthController@user');
// Route::get('/user/add','AuthController@formUser');
// Route::post('/user/save','AuthController@saveUser');
// Route::get('/login','AuthController@login');
// Route::post('/user/ceklogin','AuthController@ceklogin');
// Route::get('/logout','AuthController@logout');
