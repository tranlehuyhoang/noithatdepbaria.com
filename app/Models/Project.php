<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Project extends Model
{
    use HasFactory;

    protected $fillable = [
        'banner',
        'slug',
        'title',
        'short_desc',
        'description',
        'address',
        'view',
    ];

    // Nếu bạn sử dụng tính năng tạo slug tự động
    public static function boot()
    {
        parent::boot();

        static::creating(function ($model) {
            $model->slug = \Str::slug($model->title);
        });
    }
}