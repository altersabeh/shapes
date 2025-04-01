<?php

namespace Shapes;

use Shapes\Base\Models\Circle;
use Shapes\Base\Models\Rectangle;
use Shapes\Base\Models\Square;

class_alias(Circle::class, __NAMESPACE__ . '\Circle');
class_alias(Rectangle::class, __NAMESPACE__ . '\Rectangle');
class_alias(Square::class, __NAMESPACE__ . '\Square');
