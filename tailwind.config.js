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
                sans: ["'Nunito'", ...defaultTheme.fontFamily.sans],
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
                    50:  "var(--color-secondary-50)",
                    100: "var(--color-secondary-100)",
                    200: "var(--color-secondary-200)",
                    300: "var(--color-secondary-300)",
                    400: "var(--color-secondary-400)",
                    500: "var(--color-secondary-500)",
                    600: "var(--color-secondary-600)",
                    700: "var(--color-secondary-700)",
                    800: "var(--color-secondary-800)",
                    900: "var(--color-secondary-900)",
                    950: "var(--color-secondary-950)",
                },
                tertiary: {
                    50:  "var(--color-tertiary-50)",
                    100: "var(--color-tertiary-100)",
                    200: "var(--color-tertiary-200)",
                    300: "var(--color-tertiary-300)",
                    400: "var(--color-tertiary-400)",
                    500: "var(--color-tertiary-500)",
                    600: "var(--color-tertiary-600)",
                    700: "var(--color-tertiary-700)",
                    800: "var(--color-tertiary-800)",
                    900: "var(--color-tertiary-900)",
                    950: "var(--color-tertiary-950)",
                },
            },
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
