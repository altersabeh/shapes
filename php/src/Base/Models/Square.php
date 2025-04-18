<?php

namespace Shapes\Base\Models;

use Shapes\Base\Commons\Dimensional;

final class Square implements Dimensional {
    private float $side;

    public function __construct(float $side) {
        $dim_one = $side > 0 ? $side : 0;
        $this->side = $dim_one;
    }

    #[\Override]
    public function area(): float {
        return $this->side ** 2;
    }

    #[\Override]
    public function perimeter(): float {
        return 4.0 * $this->side;
    }
}
