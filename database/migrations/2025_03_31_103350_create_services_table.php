<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateServicesTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('services', function (Blueprint $table) {
            $table->id(); // Tạo cột id tự động tăng
            $table->string('title'); // Cột tiêu đề dịch vụ
            $table->string('banner')->nullable(); // Cột banner
            $table->string('slug')->unique(); // Cột slug (phải là duy nhất)
            $table->text('short_desc')->nullable(); // Cột mô tả ngắn
            $table->integer('view')->default(0); // Cột lượt xem
            $table->text('description')->nullable(); // Cột mô tả chi tiết
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
        Schema::dropIfExists('services'); // Xóa bảng services
    }
}