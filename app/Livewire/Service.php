<?php

namespace App\Livewire;

use App\Models\Blog;
use App\Models\Category;
use App\Models\Service as ModelsService;
use Livewire\Component;

class Service extends Component
{
    public $service;
    public $services;
    public $slug = null;


    public function mount($slug)
    {
        $this->service = ModelsService::where('slug', $slug)->first();
        $this->slug = $slug;
        if (!$this->service) {
            abort(404);
        }
    }
    public function render()
    {
        $this->services = ModelsService::where('slug', '!=', $this->slug)->orderBy('created_at', 'desc')->take(6)->get();
        $this->categories = Category::all();
        $this->blogs = Blog::orderBy('created_at', 'desc')->take(3)->get();
        return view('livewire.service', array('services' => $this->services,
         'categories' => $this->categories,
         'blogs' => $this->blogs));
    }
}
