package shapes

import munit.FunSuite
import shapes.fixtures as helper

val DELTA = 0.001

class CircleSuite extends FunSuite {
    test("Circle area should be correct") {
        val circle = helper.setupCircle()
        val result = circle.area
        val expected = 754.767
        assert((result - expected).abs < DELTA)
    }

    test("Circle perimeter should be correct") {
        val circle = helper.setupCircle()
        val result = circle.perimeter
        val expected = 97.389
        assert((result - expected).abs < DELTA)
    }
}

class RectangleSuite extends FunSuite {
    test("Rectangle area should be correct") {
        val rectangle = helper.setupRectangle()
        val result = rectangle.area
        val expected = 756.437
        assert((result - expected).abs < DELTA)
    }

    test("Rectangle perimeter should be correct") {
        val rectangle = helper.setupRectangle()
        val result = rectangle.perimeter
        val expected = 112.0
        assert((result - expected).abs < DELTA)
    }
}

class SquareSuite extends FunSuite {
    test("Square area should be correct") {
        val square = helper.setupSquare()
        val result = square.area
        val expected = 105.062
        assert((result - expected).abs < DELTA)
    }

    test("Square perimeter should be correct") {
        val square = helper.setupSquare()
        val result = square.perimeter
        val expected = 41.0
        assert((result - expected).abs < DELTA)
    }
}
