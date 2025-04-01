<?php

namespace Shapes\Base\Commons;

/**
 * # Summary of Measurable
 *
 * ``` php
 * <?php
 *
 * interface Measurable {
 *     public function getArea(): float;
 *     public function getPerimeter(): float;
 * }
 * ```
 */
interface Dimensional {
    /**
     * Print the area of the shape
     */
    public function area(): float;

    /**
     * Print the perimeter of the shape
     */
    public function perimeter(): float;
}
