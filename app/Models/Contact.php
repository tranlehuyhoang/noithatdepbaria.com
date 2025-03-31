<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Contact extends Model
{
    use HasFactory;

    // Các trường có thể được gán giá trị hàng loạt
    protected $fillable = [
        'name',
        'email',
        'phone',
        'title',
        'content',
    ];
}