<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;

class users extends Model
{
    use SoftDeletes;
    use SearchableTrait;

    protected $table = 'users';
    protected $primarykey = 'id';

    protected $fillable = [
        'name',
        'password',
        'email'
    ];
}
