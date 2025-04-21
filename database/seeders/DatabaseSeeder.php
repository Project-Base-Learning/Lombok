<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Hash;

class DatabaseSeeder extends Seeder
{
    /**
     * Seed the application's database.
     */
    public function run(): void
    {
        // Users
        DB::table('users')->insert([
            'id' => 1,
            'name' => 'Superadmin',
            'email' => 'superadmin@gmail.com',
            'password' => Hash::make('987654321'),
            'email_verified_at' => now(),
            'created_at' => now(),
            'updated_at' => now(),
        ]);

        // Settings
        DB::table('general_settings')->insert([
            'id' => 1,
            'site_name' => env('APP_NAME')
        ]);

        // Tags
        DB::table('tags')->insert([
            'tag' => 'post',
            'layout_detail_path' => 'pages/post_detail'
        ]);
        DB::table('tags')->insert([
            'tag' => 'event',
            'layout_detail_path' => 'pages/event_detail'
        ]);
    }
}
