<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Mahasiswa extends Model
{
    protected $table = 'mahasiswa366';

    protected $fillable = ['nim','nama','gender','jurusan','bidang_minat'];
}
