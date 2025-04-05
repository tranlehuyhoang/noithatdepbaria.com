<?php

namespace App\Livewire\Inc;

use App\Models\Setting;
use Livewire\Component;

class Header extends Component
{
    public function render()
    {
        $settings = Setting::all();
        return view('livewire.inc.header', [
            'settings' => $settings,
        ]);
    }
}
