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
        Schema::table('sponsors', function (Blueprint $table) {
            $table->dropColumn('image_path');
            $table->dropColumn('alt');
            $table->dropColumn('width');
            $table->dropColumn('height');
            $table->dropColumn('lazy');
            $table->foreignId('image_id')->after('title')->nullable()->constrained(app(config('curator.model'))->getTable())->cascadeOnUpdate()->nullOnDelete();
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        //
    }
};
