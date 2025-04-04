<?php

namespace Shapes\Tests;

use PHPUnit\Framework\Attributes\TestDox;
use PHPUnit\Framework\TestCase;
use Shapes\Base\Commons\Dimensional;
use Shapes\Tests\Fixtures as Helper;

/**
 * @internal
 *
 * @coversNothing
 */
#[TestDox("Commons Test")]
final class CommonsTest extends TestCase {
    #[TestDox("Test Circle Implements Dimensional")]
    public function testCircleImplementsDimensional(): void {
        $circle = Helper\setup_circle();
        $this->assertDimensional($circle, 754.767, 97.389);
    }

    #[TestDox("Test Rectangle Implements Dimensional")]
    public function testRectangleImplementsDimensional(): void {
        $rectangle = Helper\setup_rectangle();
        $this->assertDimensional($rectangle, 756.437, 112.0);
    }

    #[TestDox("Test Square Implements Dimensional")]
    public function testSquareImplementsDimensional(): void {
        $square = Helper\setup_square();
        $this->assertDimensional($square, 105.062, 41.0);
    }

    private function assertDimensional(
        Dimensional $dimensionalShape,
        float $expectedArea,
        float $expectedPerimeter
    ): void {
        $area_diff = abs($dimensionalShape->area() - $expectedArea);
        $perimeter_diff = abs($dimensionalShape->perimeter() - $expectedPerimeter);

        self::assertTrue($area_diff < 0.001, "AREA NOT EQUAL");
        self::assertTrue($perimeter_diff < 0.001, "PERIMETER NOT EQUAL");
    }
}
