<?php

namespace App\Livewire;

use App\Models\Service;
use Livewire\Component;
use Livewire\WithPagination;

class Services extends Component
{
    use WithPagination;
    public $paginate = 8;
    public function mount()
    {

    }
    public function render()
    {
        $this->services = Service::paginate($this->paginate);
        return view('livewire.services',
        array('services' => $this->services));
    }
}
