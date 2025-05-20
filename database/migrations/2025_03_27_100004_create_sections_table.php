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
        Schema::create('section_types', function (Blueprint $table) {
            $table->id();
            $table->string('type')->unique();
        });

        Schema::create('sections', function (Blueprint $table) {
            $table->id();
            $table->string('title')->unique();
            $table->string('layout_path');
            $table->boolean('has_dataset');
            $table->foreignId('type_id')->nullable()->constrained('section_types')->cascadeOnUpdate()->nullOnDelete();
            $table->foreignId('created_by')->nullable()->constrained('users')->cascadeOnUpdate()->nullOnDelete();
            $table->foreignId('updated_by')->nullable()->constrained('users')->cascadeOnUpdate()->nullOnDelete();
            $table->timestamps();
            $table->softDeletes();
        });

        Schema::create('section_loads', function (Blueprint $table) {
            $table->id();
            $table->foreignId('section_id')->constrained('sections')->cascadeOnUpdate()->cascadeOnDelete();
            $table->string('variable_name')->unique();
            $table->foreignId('dataset_id')->constrained('tags')->cascadeOnUpdate()->cascadeOnDelete();
            $table->string('order_col')->default('published_at');
            $table->enum('order_sort', ['asc', 'desc'])->default('asc');
            $table->enum('paginate', ['default', 'simple'])->nullable();
            $table->integer('limit')->default(0);
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('section_types');
        Schema::dropIfExists('sections');
        Schema::dropIfExists('section_loads');
    }
};
