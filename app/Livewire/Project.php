<?php

namespace App\Livewire;

use App\Models\Blog;
use App\Models\Category;
use App\Models\Project as ModelsProject;
use App\Models\Service;
use Livewire\Component;

class Project extends Component
{
    public $project;
    public $slug;

    public function mount($slug)
    {
        $this->slug = $slug;
        $this->project = ModelsProject::where('slug', $this->slug)->first();
        if (!$this->project) {
            abort(404);
        }
        $this->project->increment('view');
        $this->project->save();

    }
    public function render()
    {
        $this->services = Service::where('slug', '!=', $this->slug)->orderBy('created_at', 'desc')->take(6)->get();
        $this->categories = Category::all();
        $this->projects = ModelsProject::where('slug', '!=', $this->slug)->orderBy('created_at', 'desc')->take(3)->get();
        return view('livewire.project', array('services' => $this->services,
         'categories' => $this->categories,
         'projects' => $this->projects)
        );
    }
}
