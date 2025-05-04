/** @type {import('tailwindcss').Config} */
import defaultTheme from "tailwindcss/defaultTheme";

const colors = require('tailwindcss/colors');

module.exports = {
    content: [
        "./resources/views/**/*.blade.php",
        "./resources/views/layouts/**/*.blade.php",
        "./resources/**/*.js",
        "./resources/**/*.vue",
        "./resources/**/*.blade.php",
        "./resources/**/*.{js,vue}",
        "./storage/framework/views/*.php",
        "./vendor/awcodes/filament-tiptap-editor/resources/**/*.blade.php",
        "./vendor/awcodes/filament-curator/resources/**/*.blade.php",
        "./vendor/filament/**/*.blade.php",
        "./vendor/laravel/framework/src/Illuminate/Pagination/resources/views/*.blade.php",
    ],
    theme: {
        extend: {
            fontFamily: {
                sans: ["'Open Sans'", ...defaultTheme.fontFamily.sans],
            },
            colors: {
                primary: {
                    50:  "var(--color-primary-50)",
                    100: "var(--color-primary-100)",
                    200: "var(--color-primary-200)",
                    300: "var(--color-primary-300)",
                    400: "var(--color-primary-400)",
                    500: "var(--color-primary-500)",
                    600: "var(--color-primary-600)",
                    700: "var(--color-primary-700)",
                    800: "var(--color-primary-800)",
                    900: "var(--color-primary-900)",
                    950: "var(--color-primary-950)",
                },
                secondary: {
                    50:  "var(--color-cyan-50)",
                    100: "var(--color-cyan-100)",
                    200: "var(--color-cyan-200)",
                    300: "var(--color-cyan-300)",
                    400: "var(--color-cyan-400)",
                    500: "var(--color-cyan-500)",
                    600: "var(--color-cyan-600)",
                    700: "var(--color-cyan-700)",
                    800: "var(--color-cyan-800)",
                    900: "var(--color-cyan-900)",
                    950: "var(--color-cyan-950)",
                },
                tertiary: {
                    50:  "var(--color-rose-50)",
                    100: "var(--color-rose-100)",
                    200: "var(--color-rose-200)",
                    300: "var(--color-rose-300)",
                    400: "var(--color-rose-400)",
                    500: "var(--color-rose-500)",
                    600: "var(--color-rose-600)",
                    700: "var(--color-rose-700)",
                    800: "var(--color-rose-800)",
                    900: "var(--color-rose-900)",
                    950: "var(--color-rose-950)",
                },
                // red: {
                //     DEFAULT: '#F32055',
                // },
                // s2condPurple: '#a32eff',
                // s2condPink: '#ff0099',
                // s2condOrange: '#ff5f55',
                // s2condYellow: '#ffe600',
                // s2condRed: '#F90218',
                // s2condMint: '#2af1b5',
            },

            // borderColor: {
            //     s2condRed: '#F90218',
            // },

            // width: {
            //     'c1': '400px',
            //     'c2': '800px',
            //     'c3': '600px',
            //    },

            // height: {
            //     'c1': '680px',
            //     'c1a': '720px',
            //     'c2': '250px',
            //    },
        },
    },
    plugins: [require("flowbite/plugin")],
    safelist: [
        {
          pattern: /(bg|text|border)-(red|blue|green|gray|yellow|indigo|purple|pink)-(50|100|200|300|400|500|600|700|800|900|950)/,
        },
        {
          pattern: /(w|h|px|py|mt|mb|ml|mr|grid|gap|flex|items|justify|text|font|underline|tracking)-.*/,
        },
    ],
};
