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
            $table->renameColumn('more_configs', 'navigation');
            $table->json('location')->after('site_favicon')->change();
            $table->json('theme')->after('contacts')->change();
            $table->json('email_settings')->after('theme')->change();
            $table->json('social_network')->after('email_settings')->change();
            $table->json('navigation')->after('social_network')->change();
            $table->json('google_analytics')->after('features')->change();
        });


        Schema::table('pages', function (Blueprint $table) {
            $table->dropColumn('sort_order');
            $table->dropColumn('published_at');
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::table('general_settings', function (Blueprint $table) {
            $table->renameColumn('navigation', 'more_configs');
            $table->json('location')->after('contacts')->change();
            $table->json('theme')->after('chatbot_settings')->change();
            $table->json('email_settings')->after('theme')->change();
            $table->json('social_network')->after('email_settings')->change();
            $table->json('navigation')->after('social_network')->change();
            $table->json('google_analytics')->after('user_features')->change();
        });


        Schema::table('pages', function (Blueprint $table) {
            $table->tinyInteger('sort_order')->after('slug')->default(0);
            $table->timestamp('published_at')->after('updated_by')->nullable();
        });
    }
};
