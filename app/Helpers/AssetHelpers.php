<?php

use Illuminate\Support\Facades\File;

if (!function_exists('dynamic_asset')) {
    function dynamic_asset($path, $extensions = ['svg', 'png', 'jpg', 'jpeg', 'gif'])
    {
        foreach ($extensions as $extension) {
            $filePath = public_path("$path.$extension");
            if (File::exists($filePath)) {
                return asset("$path.$extension");
            }
        }

        // Optional: Handle if no file is found
        return asset('image/default-placeholder.png'); // Replace with a placeholder image
    }
}
