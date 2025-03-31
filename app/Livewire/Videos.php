<?php

namespace App\Livewire;

use App\Models\Video;
use Livewire\Component;

class Videos extends Component
{
    public $videos = [];
    public function mount()
    {
        $this->videos = Video::all();
        // dd($this->videos);
    }
    public function render()
    {
        return view('livewire.videos');
    }
}
