import pluginJs from "@eslint/js";
import stylisticJs from "@stylistic/eslint-plugin-js";
import globals from "globals";
import tseslint from "typescript-eslint";

export default [
    {
        plugins: {
            "@stylistic/js": stylisticJs,
        },
        ignores: ["node_modules/**", "dist/**", ".nx/**"],
        rules: {
            indent: ["error", 4],
            semi: ["error", "always"],
            quotes: ["error", "double"],
            "prefer-const": "error",
            "lines-between-class-members": ["error", "always", { exceptAfterSingleLine: true }],
        },
    },
    { files: ["**/*.{js,mjs,cjs,ts}"] },
    { languageOptions: { globals: globals.node } },
    pluginJs.configs.recommended,
    ...tseslint.configs.recommended,
];
