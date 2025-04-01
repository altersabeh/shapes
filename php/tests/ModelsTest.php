<?php

namespace Shapes\Tests;

use PHPUnit\Framework\Attributes\{Group, TestDox};
use PHPUnit\Framework\TestCase;

const DELTA = 0.001;

#[TestDox("Models Test")]
class ModelsTest extends TestCase {
    #[Group("Circle")]
    #[TestDox("Test Circle Area")]
    public function test_circle_area(): void {
        $circle = Fixtures\setup_circle();
        $result = $circle->area();
        $expected = 754.767;
        $this->assertTrue(abs($result - $expected) < DELTA);
    }

    #[Group("Circle")]
    #[TestDox("Test Circle Perimeter")]
    public function test_circle_perimeter(): void {
        $circle = Fixtures\setup_circle();
        $result = $circle->perimeter();
        $expected = 97.389;
        $this->assertTrue(abs($result - $expected) < DELTA);
    }

    #[Group("Rectangle")]
    #[TestDox("Test Rectangle Area")]
    public function test_rectangle_area(): void {
        $rectangle = Fixtures\setup_rectangle();
        $result = $rectangle->area();
        $expected = 756.437;
        $this->assertTrue(abs($result - $expected) < DELTA);
    }

    #[Group("Rectangle")]
    #[TestDox("Test Rectangle Perimeter")]
    public function test_rectangle_perimeter(): void {
        $rectangle = Fixtures\setup_rectangle();
        $result = $rectangle->perimeter();
        $expected = 112.0;
        $this->assertTrue(abs($result - $expected) < DELTA);
    }

    #[Group("Square")]
    #[TestDox("Test Square Area")]
    public function test_square_area(): void {
        $square = Fixtures\setup_square();
        $result = $square->area();
        $expected = 105.062;
        $this->assertTrue(abs($result - $expected) < DELTA);
    }

    #[Group("Square")]
    #[TestDox("Test Square Perimeter")]
    public function test_square_perimeter(): void {
        $square = Fixtures\setup_square();
        $result = $square->perimeter();
        $expected = 41.0;
        $this->assertTrue(abs($result - $expected) < DELTA);
    }
}
