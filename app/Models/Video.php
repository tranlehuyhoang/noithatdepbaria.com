<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Video extends Model
{
    use HasFactory;

    // Các trường có thể được gán giá trị hàng loạt
    protected $fillable = [
        'banner',
        'title',
        'url',
    ];
}