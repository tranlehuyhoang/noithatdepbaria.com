<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Product extends Model
{
    use HasFactory;

    // Các trường có thể được gán giá trị hàng loạt
    protected $fillable = [
        'images',
        'slug',
        'title',
        'view',
        'short_dec',
        'description',
        'category_id',
        'seo_title',
        'seo_keywords',
        'seo_description',
    ];

    // Định nghĩa mối quan hệ với Category
    public function category()
    {
        return $this->belongsTo(Category::class);
    }
    protected $casts = [
        'images' => 'array',
    ];
}