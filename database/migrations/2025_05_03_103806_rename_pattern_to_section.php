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
        Schema::rename('patterns', 'sections');
        Schema::rename('pattern_loads', 'section_loads');
        Schema::rename('pattern_types', 'section_types');
        Schema::table('section_loads', function (Blueprint $table) {
            $table->renameColumn('pattern_id', 'section_id');
        });
        Schema::table('page_sections', function (Blueprint $table) {
            $table->renameColumn('pattern_id', 'section_id');
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::rename('sections', 'patterns');
        Schema::rename('section_loads', 'pattern_loads');
        Schema::rename('section_types', 'pattern_types');
        Schema::table('pattern_loads', function (Blueprint $table) {
            $table->renameColumn('section_id', 'pattern_id');
        });
        Schema::table('page_sections', function (Blueprint $table) {
            $table->renameColumn('section_id', 'pattern_id');
        });
    }
};
