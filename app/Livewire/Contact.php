<?php

namespace App\Livewire;

use Livewire\Component;
use App\Mail\ContactMail;
use App\Models\Contact as ModelsContact;
use Illuminate\Support\Facades\Mail;

class Contact extends Component
{
    public $name;
    public $email;
    public $phone;
    public $title;
    public $content;

    protected $rules = [
        'name' => 'required|min:3',
        'email' => 'required|email',
        'phone' => 'required|numeric|min:10',
        'title' => 'required|min:3',
        'content' => 'required|min:10'
    ];

    protected $messages = [
        'name.required' => 'Vui lòng nhập họ tên',
        'name.min' => 'Họ tên phải có ít nhất 3 ký tự',
        'email.required' => 'Vui lòng nhập email',
        'email.email' => 'Email không đúng định dạng',
        'phone.required' => 'Vui lòng nhập số điện thoại',
        'phone.numeric' => 'Số điện thoại phải là số',
        'phone.min' => 'Số điện thoại không hợp lệ',
        'title.required' => 'Vui lòng nhập tiêu đề',
        'title.min' => 'Tiêu đề phải có ít nhất 3 ký tự',
        'content.required' => 'Vui lòng nhập nội dung',
        'content.min' => 'Nội dung phải có ít nhất 10 ký tự'
    ];

    public function submit()
    {
        $this->validate();

        // Save contact to database
        ModelsContact::create([
            'name' => $this->name,
            'email' => $this->email,
            'phone' => $this->phone,
            'title' => $this->title,
            'content' => $this->content
        ]);

        // Send email
        Mail::to(env('EMAIL_SEND_CONTACT', '2509roblox@gmail.com'))->send(new ContactMail([
            'name' => $this->name,
            'email' => $this->email,
            'phone' => $this->phone,
            'title' => $this->title,
            'content' => $this->content
        ]));

        session()->flash('message', 'Cảm ơn bạn đã liên hệ với chúng tôi!');
        $this->reset();
    }

    public function render()
    {
        return view('livewire.contact');
    }
}
