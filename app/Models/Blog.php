<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Blog extends Model
{
    use HasFactory;

    // Các trường có thể được gán giá trị hàng loạt
    protected $fillable = [
        'title',
        'banner',
        'slug',
        'short_desc',
        'view',
        'description',
    ];
}