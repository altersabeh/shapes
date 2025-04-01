import { type Config } from "prettier";

/**
 * @see https://prettier.io/docs/configuration
 * @type {import("prettier").Config}
 */
const config: Config = {
    endOfLine: "lf",
    printWidth: 100,
    semi: true,
    singleQuote: false,
    tabWidth: 4,
    trailingComma: "es5",
    useTabs: false,
};

export default config;
