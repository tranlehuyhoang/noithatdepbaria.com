<?php

namespace App\Livewire\Inc;

use App\Models\Blog;
use App\Models\Category;
use Livewire\Component;

class Sidebar extends Component
{
    public $categories;
    public $blogs;

    public function mount()
    {
        $this->categories = Category::all();
        $this->blogs = Blog::orderBy('created_at', 'desc')->take(3)->get();
    }
    public function render()
    {
        return view('livewire.inc.sidebar');
    }
}
