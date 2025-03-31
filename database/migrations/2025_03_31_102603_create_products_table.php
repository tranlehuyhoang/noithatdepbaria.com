<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateProductsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('products', function (Blueprint $table) {
            $table->id(); // Tạo cột id tự động tăng
            $table->string('images'); // Cột images
            $table->string('slug')->unique(); // Cột slug (phải là duy nhất)
            $table->string('title'); // Cột title
            $table->integer('view')->default(0); // Cột view, mặc định là 0
            $table->text('short_dec')->nullable(); // Cột short_dec
            $table->text('description')->nullable(); // Cột description
            $table->foreignId('category_id')->constrained()->onDelete('cascade'); // Khóa ngoại category_id
            $table->timestamps(); // Cột created_at và updated_at
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('products'); // Xóa bảng products
    }
}