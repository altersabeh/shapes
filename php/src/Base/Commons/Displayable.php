<?php

namespace Shapes\Base\Commons;

trait Displayable {
    public function isDisplayable(): bool {
        return true;
    }

    public function display(): void {
        if ($this->isDisplayable()) {
            echo "Yes, this shape can be displayed." . PHP_EOL;
        } else {
            echo "No, this shape cannot be displayed." . PHP_EOL;
        }
    }
}
