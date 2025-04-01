<?php

namespace Shapes\Tests\Fixtures;

use Shapes\Base\Models\{Circle, Rectangle, Square};

function setup_circle(): Circle {
    $radius = 15.5;
    return new Circle($radius);
}

function setup_rectangle(): Rectangle {
    $length = 22.75;
    $width = 33.25;
    return new Rectangle($length, $width);
}

function setup_square(): Square {
    $side = 10.25;
    return new Square($side);
}
