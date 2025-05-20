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
        Schema::table('sections', function (Blueprint $table) {
            // Manually Delete User Id
            $table->foreignId('updated_by')->after('user_id')->nullable()->constrained('users')->cascadeOnUpdate()->nullOnDelete();
            $table->foreignId('created_by')->after('user_id')->nullable()->constrained('users')->cascadeOnUpdate()->nullOnDelete();
        });

        Schema::table('tags', function (Blueprint $table) {
            // Manually Delete User Id
            $table->foreignId('updated_by')->after('user_id')->nullable()->constrained('users')->cascadeOnUpdate()->nullOnDelete();
            $table->foreignId('created_by')->after('user_id')->nullable()->constrained('users')->cascadeOnUpdate()->nullOnDelete();
        });

        Schema::table('sponsors', function (Blueprint $table) {
            // Manually Delete User Id
            $table->foreignId('updated_by')->after('user_id')->nullable()->constrained('users')->cascadeOnUpdate()->nullOnDelete();
            $table->foreignId('created_by')->after('user_id')->nullable()->constrained('users')->cascadeOnUpdate()->nullOnDelete();
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::table('sections', function (Blueprint $table) {
            //
        });
    }
};
