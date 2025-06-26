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
        Schema::create('sponsor_categories', function (Blueprint $table) {
            $table->id();
            $table->string('category_name')->unique();
            $table->tinyInteger('sort_order')->default(0);
        });

        Schema::create('sponsors', function (Blueprint $table) {
            $table->id();
            $table->string('title');
            $table->foreignId('image_id')->nullable()->constrained(app(config('curator.model'))->getTable())->cascadeOnUpdate()->nullOnDelete();
            $table->foreignId('category_id')->nullable()->constrained('sponsor_categories')->cascadeOnUpdate()->nullOnDelete();
            $table->boolean('featured')->default(0);
            $table->foreignId('created_by')->nullable()->constrained('users')->cascadeOnUpdate()->nullOnDelete();
            $table->foreignId('updated_by')->nullable()->constrained('users')->cascadeOnUpdate()->nullOnDelete();
            $table->timestamps();
            $table->softDeletes();
        });

        Schema::create('article_sponsors', function (Blueprint $table) {
            $table->foreignId('article_id')->constrained('articles')->cascadeOnUpdate()->cascadeOnDelete();
            $table->foreignId('sponsor_id')->constrained('sponsors')->cascadeOnUpdate()->cascadeOnDelete();
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('media_partner_positions');
        Schema::dropIfExists('media_partners');
        Schema::dropIfExists('articles_media_partners');
    }
};
