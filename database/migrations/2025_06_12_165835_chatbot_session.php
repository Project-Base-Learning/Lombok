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
        Schema::create('chatbot_sessions', function (Blueprint $table) {
            $table->id();
            $table->string('title');
            $table->foreignId('user_id')->nullable()->constrained('users')->cascadeOnUpdate()->cascadeOnDelete();
            $table->timestamps();
        });

        Schema::create('chatbot_messages', function (Blueprint $table) {
            $table->id();
            $table->foreignId('session_id')->nullable()->constrained('chatbot_sessions')->cascadeOnUpdate()->cascadeOnDelete();
            $table->enum('sender', ['user', 'bot']);
            $table->text('message');
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('chatbot_sessions');
        Schema::dropIfExists('chatbot_messages');
    }
};
