package shapes

import munit.FunSuite
import shapes.base.commons.Dimensional
import shapes.fixtures as helper

class TestCommons extends FunSuite {
    test("Circle implements Dimensional correctly") {
        val circle = helper.setupCircle()
        assertDimensional(circle, 754.767, 97.389)
    }

    test("Rectangle implements Dimensional correctly") {
        val rectangle = helper.setupRectangle()
        assertDimensional(rectangle, 756.437, 112.0)
    }

    test("Square implements Dimensional correctly") {
        val square = helper.setupSquare()
        assertDimensional(square, 105.062, 41.0)
    }

    private def assertDimensional(
        dimensionalShape: Dimensional,
        expectedArea: Double,
        expectedPerimeter: Double
    ): Unit = {
        val areaDiff = (dimensionalShape.area - expectedArea).abs
        val perimeterDiff = (dimensionalShape.perimeter - expectedPerimeter).abs

        assert(areaDiff < 0.001, "AREA NOT EQUAL")
        assert(perimeterDiff < 0.001, "PERIMETER NOT EQUAL!")
    }
}
