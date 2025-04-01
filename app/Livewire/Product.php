<?php

namespace App\Livewire;

use App\Models\Product as ProductModel;
use Livewire\Component;
use Livewire\WithPagination;

class Product extends Component
{
    use WithPagination;

    public $search = '';
    public $product = '';

    public $sorting = 'newest';
    public $category = '';
    public $perPage = 12;
    public $productId;
    public $slug;


    protected $queryString = [
        'search' => ['except' => ''],
        'sorting' => ['except' => 'newest'],
        'category' => ['except' => ''],
        'page' => ['except' => 1],
    ];

    public function mount($slug)
    {
        $this->slug = $slug;
        $this->product = ProductModel::with('category')->where('slug', $this->slug)->first();
        if (!$this->product) {
            abort(404);
        }
        $this->product->increment('view');
        $this->product->save();

    }
    public function updatingSearch()
    {
        $this->resetPage();
    }

    public function getRelatedProducts($categoryId, $currentProductId, $limit = 8)
    {
        return ProductModel::where('category_id', $categoryId)
            ->where('id', '!=', $currentProductId)
            ->limit($limit)
            ->get();
    }

    public function render()
    {
        $query = ProductModel::query();

        if ($this->search) {
            $query->where('name', 'like', '%' . $this->search . '%');
        }

        if ($this->category) {
            $query->where('category_id', $this->category);
        }

        switch ($this->sorting) {
            case 'price_asc':
                $query->orderBy('price', 'asc');
                break;
            case 'price_desc':
                $query->orderBy('price', 'desc');
                break;
            case 'name_asc':
                $query->orderBy('name', 'asc');
                break;
            case 'name_desc':
                $query->orderBy('name', 'desc');
                break;
            default:
                $query->latest();
                break;
        }


        $relatedProducts = $this->getRelatedProducts($this->product->category_id, $this->product->id);

        return view('livewire.product', [
            'relatedProducts' => $relatedProducts
        ]);
    }
}
