<?php

namespace App\Livewire;

use Livewire\Component;
use App\Models\Project;

class Home extends Component
{
    public function render()
    {
        $projects = Project::orderBy('created_at', 'desc')->get();
        return view('livewire.home', [
            'projects' => $projects
        ]);
    }
}
