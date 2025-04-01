// prettier.config.js, .prettierrc.js, prettier.config.cjs, or .prettierrc.cjs

/**
 * @see https://prettier.io/docs/configuration
 * @type {import("prettier").Config}
 */
const config = {
    plugins: ["@prettier/plugin-php"],
    tabWidth: 4,
    parser: "php",
    semi: false,
    singleQuote: false,
    trailingCommaPHP: true,
    endOfLine: "lf",
    braceStyle: "1tbs",
    bracketSpacing: true,
    trailingCommaPHP: true,
};

module.exports = config;
