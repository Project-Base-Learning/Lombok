<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    /**
     * Run the migrations.
     */
    public function up(): void
    {
        Schema::create('covers', function (Blueprint $table) {
            $table->id();
            $table->string('image_path');
            $table->string('alt')->nullable();
        });

        Schema::create('articles_cover', function (Blueprint $table) {
            $table->foreignId('article_id')->constrained('articles')->cascadeOnUpdate()->cascadeOnDelete();
            $table->foreignId('cover_id')->constrained('covers')->cascadeOnUpdate()->cascadeOnDelete();
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('covers');
        Schema::dropIfExists('articles_cover');
    }
};
