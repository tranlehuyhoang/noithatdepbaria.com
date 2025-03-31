<?php

namespace App\Livewire;

use App\Models\Blog;
use Livewire\Component;
use Livewire\WithPagination;
use Livewire\Attributes\Url;

class Blogs extends Component
{
    use WithPagination;
    public $paginate = 8;

    #[Url]
    public $keyword = '';


    public function render()
    {
        if ($this->keyword) {
            $blogs = Blog::where('title', 'like', '%' . $this->keyword . '%')
                ->orWhere('short_desc', 'like', '%' . $this->keyword . '%')
                ->orderBy('created_at', 'desc')
                ->paginate($this->paginate);
            return view('livewire.blogs', [
                'blogs' => $blogs,
            ]);
        }

        $blogs = Blog::orderBy('created_at', 'desc')->paginate($this->paginate);
        return view('livewire.blogs', [
            'blogs' => $blogs,
        ]);
    }
}
