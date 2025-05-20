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
            $table->dropColumn('has_card');
            $table->dropColumn('has_detail_page');
            $table->boolean('searchable')->after('default')->default(0);
            $table->string('card_layout')->after('searchable');
            $table->string('detail_page')->after('card_layout');
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::table('categories', function (Blueprint $table) {
            $table->boolean('has_card')->default(0)->after('default');
            $table->boolean('has_detail_page')->default(0)->after('has_card');
            $table->dropColumn('searchable');
            $table->dropColumn('card_layout');
            $table->dropColumn('detail_page');
        });
    }
};
