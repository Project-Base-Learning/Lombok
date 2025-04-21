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
        Schema::create('pattern_types', function (Blueprint $table) {
            $table->id();
            $table->string('type')->unique();
        });

        Schema::create('patterns', function (Blueprint $table) {
            $table->id();
            $table->string('title')->unique();
            $table->string('layout_path');
            $table->boolean('has_dataset');
            $table->foreignId('type_id')->nullable()->constrained('pattern_types')->cascadeOnUpdate()->nullOnDelete();
            $table->foreignId('user_id')->nullable()->constrained('users')->cascadeOnUpdate()->nullOnDelete();
            $table->timestamps();
            $table->softDeletes();
        });

        Schema::create('pattern_loads', function (Blueprint $table) {
            $table->id();
            $table->foreignId('pattern_id')->constrained('patterns')->cascadeOnUpdate()->cascadeOnDelete();
            $table->string('name_variable')->unique();
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
        Schema::dropIfExists('pattern_types');
        Schema::dropIfExists('patterns');
        Schema::dropIfExists('pattern_loads');
    }
};
