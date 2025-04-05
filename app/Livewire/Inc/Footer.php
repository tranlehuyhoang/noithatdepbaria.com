<?php

namespace App\Livewire\Inc;

use App\Models\Setting;
use Livewire\Component;

class Footer extends Component
{
    public function render()
    {
        $settings = Setting::all();
        return view('livewire.inc.footer', [
            'settings' => $settings
        ]);
    }
}
