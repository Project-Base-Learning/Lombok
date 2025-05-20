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
        Schema::table('categories', function (Blueprint $table) {
            $table->string('slug')->unique()->after('category_name');
            $table->dropColumn('layout_detail_path');
            $table->boolean('has_card')->default(0)->after('default');
            $table->boolean('has_detail_page')->default(0)->after('has_card');
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::table('categories', function (Blueprint $table) {
            $table->dropColumn('slug');
            $table->string('layout_detail_path');
            $table->dropColumn('has_card');
            $table->dropColumn('has_detail_page');
            $table->dropTimestamps();
        });
    }
};
