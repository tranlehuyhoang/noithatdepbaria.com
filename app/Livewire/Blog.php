<?php

namespace App\Livewire;

use App\Models\Blog as ModelsBlog;
use App\Models\Category;
use App\Models\Service;
use Livewire\Component;

class Blog extends Component
{
    public $blog;
    public $blogs;
    public $slug = null;

    public function mount($slug)
    {
        $this->blog = ModelsBlog::where('slug', $slug)->first();
        $this->slug = $slug;
        if (!$this->blog) {
            abort(404);
        }
        $this->blog->increment('view');
        $this->blog->save();
    }
    public function render()
    {
        $this->services = Service::orderBy('created_at', 'desc')->take(6)->get();
        $this->categories = Category::all();
        $this->blogs = ModelsBlog::where('slug', '!=', $this->slug)
                                    ->orderBy('created_at', 'desc')
                                    ->take(3)
                                    ->get();
        return view('livewire.blog', [
            'categories' => $this->categories,
            'blogs' => $this->blogs,
            'services' => $this->services
        ]);
    }
}
