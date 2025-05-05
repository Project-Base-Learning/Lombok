<?php

namespace App\Enums;

use App\Traits\WithOptions;

enum SocialNetworkEnum: string
{
    use WithOptions;

    // Make sure the name of item as same as the icon brand in font awsome
    case FACEBOOK = 'facebook';
    case INSTAGRAM = 'instagram';
    case TWITTER = 'x_twitter';
    case YOUTUBE = 'youtube';
    case LINKEDIN = 'linkedin';
    case TIKTOK = 'tiktok';
    case PINTEREST = 'pinterest';
}
