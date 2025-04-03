<?php

namespace App\Livewire;

use Livewire\Component;
use App\Models\Project;
use App\Models\Product;
use App\Models\Blog;

class Home extends Component
{
    public function render()
    {
        $projects = Project::orderBy('created_at', 'desc')->get();
        $products = Product::orderBy('created_at', 'desc')->take(8)->get();
        $blogs = Blog::orderBy('created_at', 'desc')->take(3)->get();
        return view('livewire.home', [
            'projects' => $projects,
            'products' => $products,
            'blogs' => $blogs
        ]);
    }
}
