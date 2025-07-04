import { defineConfig } from "vite";
import tailwindcss from "tailwindcss";
import laravel from "laravel-vite-plugin";

export default defineConfig({
    plugins: [
        laravel({
            input: [
                "resources/css/app.css",
                "resources/css/chatbot.css",
                "resources/js/app.js",
            ],
            refresh: true,
        }),
    ],
});
