<?php

namespace Shapes\Base\Models;

use Shapes\Base\Commons\{BaseShape, Dimensional, Displayable};

final class Circle extends BaseShape implements Dimensional {
    use Displayable;
    private float $radius;
    private ?string $color;

    public function __construct(float $radius) {
        $dim1 = $radius > 0 ? $radius : 0;

        parent::__construct([
            ["radius" => max($radius ?? 0, 0)],
            ["diameter" => max($radius ?? 0, 0) * 2],
        ]);

        $this->radius = $dim1;
        $this->color = "None";
    }

    public function getColor(): string {
        return $this->color;
    }

    public function setColor(string $color): void {
        $this->color = $color;
    }

    #[\Override]
    public function printDescription(): void {
        echo "Circle radius: {$this->radius}" . PHP_EOL;
        echo "Circle dimensions: {$this->formatDimensions()}" . PHP_EOL;
        echo "Circle color: {$this->color}" . PHP_EOL;
        echo "Circle area: {$this->area()}" . PHP_EOL;
        echo "Circle perimeter: {$this->perimeter()}" . PHP_EOL;
        echo "Circle is displayable: {$this->isDisplayable()} " . PHP_EOL;
        echo "Circle is a shape: " . self::isAShape() . PHP_EOL;
    }

    #[\Override]
    public function area(): float {
        return pi() * pow($this->radius, 2);
    }

    #[\Override]
    public function perimeter(): float {
        return 2.0 * pi() * $this->radius;
    }

    private function formatDimensions(): string {
        $formatted_string = array_map(
            fn($dim) => implode(
                " | ",
                array_map(fn($key, $value) => "{$key}: {$value}", array_keys($dim), $dim)
            ),
            $this->getDimensions()
        );
        return implode(" | ", $formatted_string);
    }
}
