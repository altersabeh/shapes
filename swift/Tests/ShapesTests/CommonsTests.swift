import ShapesTestsFixtures
import Testing

@testable import ShapesBaseCommons

@Suite("Test Dimensional")
final class DimensionalTests {
    @Test func TestCircleImplementsDimensional() {
        let circle = Helper.setupCircle()
        assertDimensional(circle, 754.767, 97.389)
    }

    @Test func TestRectangleImplementsDimensional() {
        let rectangle = Helper.setupRectangle()
        assertDimensional(rectangle, 756.437, 112.0)
    }

    @Test func TestSquareImplementsDimensional() {
        let square = Helper.setupSquare()
        assertDimensional(square, 105.062, 41.0)
    }

    private func assertDimensional(
        _ geometricShape: Dimensional,
        _ expectedArea: Double,
        _ expectedPerimeter: Double
    ) {
        let areaDiff = abs(geometricShape.area() - expectedArea)
        let perimeterDiff = abs(geometricShape.perimeter() - expectedPerimeter)

        #expect(areaDiff < 0.001, "AREA NOT EQUAL")
        #expect(perimeterDiff < 0.001, "PERIMETER NOT EQUAL")
    }
}
