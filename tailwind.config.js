/** @type {import('tailwindcss').Config} */
import defaultTheme from "tailwindcss/defaultTheme";

const colors = require('tailwindcss/colors');

module.exports = {
    content: [
        "./vendor/laravel/framework/src/Illuminate/Pagination/resources/views/*.blade.php",
        './vendor/awcodes/filament-tiptap-editor/resources/**/*.blade.php',
        './vendor/awcodes/filament-curator/resources/**/*.blade.php',
        "./storage/framework/views/*.php",
        "./resources/views/**/*.blade.php",
        "./resources/views/layouts/**/*.blade.php",
        "./resources/**/*.js",
        "./resources/**/*.vue",
        "./resources/**/*.blade.php",
        "./resources/**/*.{js,vue}",
    ],
    theme: {
        extend: {
            fontFamily: {
                sans: ["'Open Sans'", ...defaultTheme.fontFamily.sans],
            },
            colors: {
                red: {
                    DEFAULT: '#F32055',
                },
                s2condPurple: '#a32eff',
                s2condPink: '#ff0099',
                s2condOrange: '#ff5f55',
                s2condYellow: '#ffe600',
                s2condRed: '#F90218',
                s2condMint: '#2af1b5',
            },

            borderColor: {
                s2condRed: '#F90218',
            },

            width: {
                'c1': '400px',
                'c2': '800px',
                'c3': '600px',
               },

            height: {
                'c1': '680px',
                'c1a': '720px',
                'c2': '250px',
               },
        },
    },
    plugins: [require("flowbite/plugin")],
    safelist: [
        {
            pattern: /(bg|text|border)-s2cond(Purple|Pink|Orange|Yellow|Lime|Mint|Test|Test2)/,
        },
        {
            pattern: /(mt|mb|mr|ml|my|mx|px|py|pt|pb|pl|pr)-[0-9]+/,
        },
        {
            pattern: /flex-.*/,
        },
        {
            pattern: /(bottom|right|top|left)-[0-9]+/,
        },
        {
            pattern: /(w|h)-[0-9]+/,
        },
    ],
};
