<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;

class temp_user extends Model
{
    use SoftDeletes;
    // use SearchableTrait;

    protected $table = 'temp_user';
    protected $primarykey = 'id';

    protected $fillable = [
        'owner_id',
        'key_id',
        'name',
        'password'
    ];
}
