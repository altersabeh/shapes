<?php

namespace Shapes\Client\Shell;

use Shapes\Base\Models\{Circle, Rectangle, Square};
use Shapes\Client\Shell as InputReader;

final class Handler {
    public static function handleCircle(): void {
        echo "What is the radius of the circle?" . PHP_EOL;
        $radius = InputReader\readNumber();
        $circle = new Circle($radius);
        echo "Area: " . number_format($circle->area(), 3) . PHP_EOL;
        echo "Circumference: " . number_format($circle->perimeter(), 3) . PHP_EOL;
    }

    public static function handleRectangle(): void {
        echo "What is the width of the rectangle?" . PHP_EOL;
        $width = InputReader\readNumber();
        echo "What is the height of the rectangle?" . PHP_EOL;
        $height = InputReader\readNumber();
        $rectangle = new Rectangle($width, $height);
        echo "Area: " . number_format($rectangle->area(), 3) . PHP_EOL;
        echo "Perimeter: " . number_format($rectangle->perimeter(), 3) . PHP_EOL;
    }

    public static function handleSquare(): void {
        echo "What is the side length of the square?" . PHP_EOL;
        $side = InputReader\readNumber();
        $square = new Square($side);
        echo "Area: " . number_format($square->area(), 3) . PHP_EOL;
        echo "Perimeter: " . number_format($square->perimeter(), 3) . PHP_EOL;
    }
}
