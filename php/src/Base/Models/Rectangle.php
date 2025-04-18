<?php

namespace Shapes\Base\Models;

use Shapes\Base\Commons\Dimensional;

final class Rectangle implements Dimensional {
    private float $width;
    private float $height;

    public function __construct(float $width, float $height) {
        $dim_one = $width > 0 ? $width : 0;
        $dim_two = $height > 0 ? $height : 0;
        $this->width = $dim_one;
        $this->height = $dim_two;
    }

    #[\Override]
    public function area(): float {
        return $this->width * $this->height;
    }

    #[\Override]
    public function perimeter(): float {
        return 2.0 * ($this->width + $this->height);
    }
}
