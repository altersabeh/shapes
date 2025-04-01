<?php

namespace Shapes\Base\Models;

use Shapes\Base\Commons\Dimensional;

final class Rectangle implements Dimensional {
    private float $width;
    private float $height;

    public function __construct(float $width, float $height) {
        $this->width = $width > 0 ? $width : 1;
        $this->height = $height > 0 ? $height : 1;
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
