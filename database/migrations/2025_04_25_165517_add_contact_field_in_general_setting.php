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
        Schema::table('general_settings', function (Blueprint $table) {
            $table->json('contacts')->after('site_favicon')->nullable();
            $table->dropColumn('support_email');
            $table->dropColumn('support_phone');
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::table('general_settings', function (Blueprint $table) {
            $table->dropColumn('contacts');
            $table->string('support_email')->after('site_favicon')->nullable();
            $table->string('support_phone')->after('support_email')->nullable();
        });
    }
};
