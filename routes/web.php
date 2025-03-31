<?php

use App\Livewire\Home;
use App\Livewire\About;
use App\Livewire\Products;
use App\Livewire\Product;
use App\Livewire\Project;
use App\Livewire\Projects;
use App\Livewire\Videos;
use App\Livewire\Services;
use App\Livewire\Service;
use App\Livewire\Blogs;
use App\Livewire\Blog;
use App\Livewire\Contact;
use Illuminate\Support\Facades\Route;


Route::get('/', Home::class);
Route::get('/about', About::class);

Route::get('/products', Products::class);
Route::get('/product/{slug}', Product::class);
Route::get('/videos', Videos::class);
Route::get('/services', Services::class);
Route::get('/projects', Projects::class);

Route::get('/project/{slug}', Project::class);
Route::get('/service/{slug}', Service::class);
Route::get('/contact', Contact::class);
Route::get('/blogs', Blogs::class);
Route::get('/blog/{slug}', Blog::class);
