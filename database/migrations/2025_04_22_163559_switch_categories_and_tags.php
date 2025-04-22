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
        Schema::table('categories', function(Blueprint $table) {
            $table->renameColumn('category_name', 'tag_name');
        });
        Schema::rename('categories', 'tag');
        Schema::table('tags', function(Blueprint $table) {
            $table->renameColumn('tag', 'category_name');
        });
        Schema::rename('tags', 'categories');
        Schema::rename('tag', 'tags');

        Schema::table('articles_categories', function(Blueprint $table) {
            $table->dropConstrainedForeignId('category_id');
            $table->foreignId('tag_id')->constrained('tags')->cascadeOnUpdate()->cascadeOnDelete();
        });
        Schema::rename('articles_categories', 'articles_tags');

        Schema::table('articles', function(Blueprint $table) {
            $table->dropConstrainedForeignId('tag_id');
            $table->foreignId('category_id')->after('private')->nullable()->constrained('categories')->cascadeOnUpdate()->nullOnDelete();
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::table('tags', function(Blueprint $table) {
            $table->renameColumn('tag_name', 'category_name');
        });
        Schema::rename('tags', 'category');
        Schema::table('categories', function(Blueprint $table) {
            $table->renameColumn('category_name', 'tag');
        });
        Schema::rename('categories', 'tags');
        Schema::rename('category', 'categories');

        Schema::table('articles_tags', function(Blueprint $table) {
            $table->dropConstrainedForeignId('tag_id');
            $table->foreignId('category_id')->constrained('categories')->cascadeOnUpdate()->cascadeOnDelete();
        });
        Schema::rename('articles_tags', 'articles_categories');

        Schema::table('articles', function(Blueprint $table) {
            $table->dropConstrainedForeignId('category_id');
            $table->foreignId('tag_id')->after('private')->nullable()->constrained('categories')->cascadeOnUpdate()->nullOnDelete();
        });
    }
};
