<?php

namespace Shapes\Client\Shell;

use Shapes\Client\Shell as InputReader;

final class Runner {
    public function __construct() {
        echo str_repeat("=", 53) . PHP_EOL;
        echo "Welcome to the Area and Perimeter Calculator!" . PHP_EOL;
        echo str_repeat("=", 53) . PHP_EOL;
    }

    public function run(): void {
        $printThankYouMessage = static function(): void {
            echo "Thank you for using the Shapes CLI!" . PHP_EOL;
            echo "P.S. Did you know? The secret code is 42!" . PHP_EOL;
        };

        while (TRUE) {
            self::startingMessage();

            $shape = InputReader\readInput();
            if ("q" === $shape) {
                $printThankYouMessage();
                break;
            }

            $actions = [
                "circle" => [Handler::class, "handleCircle"],
                "c" => [Handler::class, "handleCircle"],
                "rectangle" => [Handler::class, "handleRectangle"],
                "r" => [Handler::class, "handleRectangle"],
                "square" => [Handler::class, "handleSquare"],
                "s" => [Handler::class, "handleSquare"],
            ];

            $action =
                $actions[$shape] ??
                static function(): void {
                    echo "Invalid input. Please try again." . PHP_EOL;
                    echo "Type one of the listed options." . PHP_EOL;
                };

            \call_user_func($action);

            echo str_repeat("=", 53) . PHP_EOL;
        }
    }

    private static function startingMessage(): void {
        echo "Choose a shape to calculate its area and perimeter." . PHP_EOL;
        echo "  [C] CIRCLE" . PHP_EOL;
        echo "  [R] RECTANGLE" . PHP_EOL;
        echo "  [S] SQUARE" . PHP_EOL;
        echo "Type '[E]XIT' to quit the program." . PHP_EOL;
    }
}
