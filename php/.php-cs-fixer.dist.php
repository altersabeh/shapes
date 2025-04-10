<?php

use PhpCsFixer\{Config, Finder};

$finder = (new Finder())->in(__DIR__);

return (new Config())->
    setRules([
        "@PhpCsFixer" => TRUE,
        "@PhpCsFixer:risky" => TRUE,
        "blank_line_before_statement" => [
            "statements" => [],
        ],
        "blank_line_between_import_groups" => TRUE,
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
            "inline_constructor_arguments" => TRUE,
            "single_line" => TRUE,
        ],
        "concat_space" => [
            "spacing" => "one",
        ],
        "constant_case" => [
            "case" => "upper",
        ],
        "elseif" => TRUE,
        "final_class" => TRUE,
        "final_internal_class" => TRUE,
        "function_declaration" => [
            "closure_function_spacing" => "none",
            "closure_fn_spacing" => "none",
        ],
        "group_import" => TRUE,
        "modernize_types_casting" => TRUE,
        "no_php4_constructor" => FALSE,
        "operator_linebreak" => [
            "position" => "end",
        ],
        "ordered_class_elements" => TRUE,
        "ordered_imports" => TRUE,
        "ordered_interfaces" => TRUE,
        "ordered_traits" => TRUE,
        "single_import_per_statement" => FALSE,
        "single_quote" => FALSE,
        "strict_comparison" => TRUE,
        "trailing_comma_in_multiline" => [
            "elements" => ["arguments", "array_destructuring", "arrays", "match", "parameters"],
        ],
    ])->
    setFinder($finder)
;
