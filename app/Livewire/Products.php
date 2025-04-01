<?php

namespace App\Livewire;

use App\Models\Category;
use App\Models\Product;
use Livewire\Attributes\Url;
use Livewire\Component;
use Livewire\WithPagination;

class Products extends Component
{
    use WithPagination;
    public $paginate = 9;
    public $categories;
    #[Url]
    public $category = '';

    #[Url]
    public $name = '';
    public $sortOption = 'asc'; // Default sorting option
    public function mount() {
    }
    public function sortby($type)
    {
        $this->sortOption = $type;
        $this->resetPage();
    }

    public function render()
    {
        $query = Product::query();

        if (!empty($this->category)) {
            $query->where('category_id', $this->category);
        }

        if (!empty($this->name)) {
            $query->where('title', 'like', '%' . $this->name . '%');
        }

        // Apply sorting based on the selected option
        switch ($this->sortOption) {
            case 'alpha-asc':
                $query->orderBy('title', 'asc'); // A → Z
                break;
            case 'alpha-desc':
                $query->orderBy('title', 'desc'); // Z → A
                break;
            case 'created-desc':
                $query->orderBy('created_at', 'desc'); // Newest
                break;
            case 'created-asc':
                $query->orderBy('created_at', 'asc'); // Oldest
                break;
        }

        $this->products = $query->paginate($this->paginate);
        $this->categories = Category::all();

        return view('livewire.products', [
            'categories' => $this->categories,
            'products' => $this->products,
        ]);
    }
}
