<?php

namespace Shapes\Base\Commons;

abstract class BaseShape {
    private readonly array $dimensions;

    /**
     * Initialize the BaseShape with an array of associative arrays representing dimensions.
     * Each associative array should have a single key-value pair, e.g., `["radius" => 12]`.
     */
    public function __construct(array $dimensions) {
        $this->dimensions = $dimensions;
    }

    public function getDimensions(): array {
        return $this->dimensions;
    }

    public function showAvailableDimensionCount(): int {
        return \count($this->dimensions);
    }

    public static function validateShape(): bool {
        return true;
    }

    abstract public function printDescription(): void;
}
