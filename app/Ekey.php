<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;

class Ekey extends Model
{
    use SoftDeletes;
    use SearchableTrait;

    protected $table = 'registerekey';
    protected $primarykey = 'id';

    protected $fillable = [
        'ekey',
        'user_id',
        'temp_user_id'
    ];
}
