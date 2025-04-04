<?php

namespace Shapes\Tests;

use PHPUnit\Framework\Attributes\{Group, TestDox};
use PHPUnit\Framework\TestCase;
use Shapes\Tests\Fixtures as Helper;

const DELTA = 0.001;

/**
 * @internal
 *
 * @coversNothing
 */
#[TestDox("Models Test")]
final class ModelsTest extends TestCase {
    #[Group("Circle")]
    #[TestDox("Test Circle Area")]
    public function testCircleArea(): void {
        $circle = Helper\setup_circle();
        $result = $circle->area();
        $expected = 754.767;
        self::assertTrue(abs($result - $expected) < DELTA);
    }

    #[Group("Circle")]
    #[TestDox("Test Circle Perimeter")]
    public function testCirclePerimeter(): void {
        $circle = Helper\setup_circle();
        $result = $circle->perimeter();
        $expected = 97.389;
        self::assertTrue(abs($result - $expected) < DELTA);
    }

    #[Group("Rectangle")]
    #[TestDox("Test Rectangle Area")]
    public function testRectangleArea(): void {
        $rectangle = Helper\setup_rectangle();
        $result = $rectangle->area();
        $expected = 756.437;
        self::assertTrue(abs($result - $expected) < DELTA);
    }

    #[Group("Rectangle")]
    #[TestDox("Test Rectangle Perimeter")]
    public function testRectanglePerimeter(): void {
        $rectangle = Helper\setup_rectangle();
        $result = $rectangle->perimeter();
        $expected = 112.0;
        self::assertTrue(abs($result - $expected) < DELTA);
    }

    #[Group("Square")]
    #[TestDox("Test Square Area")]
    public function testSquareArea(): void {
        $square = Helper\setup_square();
        $result = $square->area();
        $expected = 105.062;
        self::assertTrue(abs($result - $expected) < DELTA);
    }

    #[Group("Square")]
    #[TestDox("Test Square Perimeter")]
    public function testSquarePerimeter(): void {
        $square = Helper\setup_square();
        $result = $square->perimeter();
        $expected = 41.0;
        self::assertTrue(abs($result - $expected) < DELTA);
    }
}
