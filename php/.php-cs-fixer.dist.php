<?php

$finder = (new PhpCsFixer\Finder())->in(__DIR__);

return (new PhpCsFixer\Config())
    ->setRules([
        "@PhpCsFixer" => true,
        "@PhpCsFixer:risky" => true,
        "blank_line_between_import_groups" => true,
        "braces_position" => [
            "classes_opening_brace" => "same_line",
            "functions_opening_brace" => "same_line",
        ],
        "class_attributes_separation" => [
            "elements" => [
                "method" => "one",
                "property" => "none",
                "trait_import" => "none",
            ],
        ],
        "class_definition" => [
            "inline_constructor_arguments" => true,
            "single_line" => true,
        ],
        "concat_space" => [
            "spacing" => "one",
        ],
        "constant_case" => [
            "case" => "upper",
        ],
        "elseif" => true,
        "final_class" => true,
        "final_internal_class" => true,
        "group_import" => true,
        "modernize_types_casting" => true,
        "no_php4_constructor" => false,
        "operator_linebreak" => [
            "position" => "end",
        ],
        "ordered_class_elements" => true,
        "ordered_imports" => true,
        "ordered_interfaces" => true,
        "ordered_traits" => true,
        "single_import_per_statement" => false,
        "single_quote" => false,
        "strict_comparison" => true,
    ])
    ->setFinder($finder);
