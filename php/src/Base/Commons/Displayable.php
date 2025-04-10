<?php

namespace Shapes\Base\Commons;

trait Displayable {
    public function shouldDisplay(): bool {
        return TRUE;
    }

    public function display(): void {
        if ($this->shouldDisplay()) {
            echo "Yes, this shape can be displayed." . PHP_EOL;
        } else {
            echo "No, this shape cannot be displayed." . PHP_EOL;
        }
    }
}
