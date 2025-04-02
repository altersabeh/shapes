import ShapesTestsFixtures
import Testing

@testable import ShapesBaseModels

let DELTA = 0.001

@Suite("Models Tests") final class ModelsTests {
    @Suite("Circle Tests") struct CircleTests {
        @Test("Test Circle Area") func testCircleArea() {
            let circle = setupCircle()
            let result = circle.area()
            let expected = 754.767
            #expect(abs(result - expected) < DELTA)
        }

        @Test("Test Circle Perimeter") func testCirclePerimeter() {
            let circle = setupCircle()
            let result = circle.perimeter()
            let expected = 97.389
            #expect(abs(result - expected) < DELTA)
        }
    }

    @Suite("Rectangle Tests") struct RectangleTests {
        @Test("Test Rectangle Area") func testRectangleArea() {
            let rectangle = setupRectangle()
            let result = rectangle.area()
            let expected = 756.437
            #expect(abs(result - expected) < DELTA)
        }

        @Test("Test Rectangle Perimeter") func testRectanglePerimeter() {
            let rectangle = setupRectangle()
            let result = rectangle.perimeter()
            let expected = 112.0
            #expect(abs(result - expected) < DELTA)
        }
    }

    @Suite("Square Tests") struct SquareTests {
        @Test("Test Square Area") func testSquareArea() {
            let square = setupSquare()
            let result = square.area()
            let expected = 105.062
            #expect(abs(result - expected) < DELTA)
        }

        @Test("Test Square Perimeter") func testSquarePerimeter() {
            let square = setupSquare()
            let result = square.perimeter()
            let expected = 41.0
            #expect(abs(result - expected) < DELTA)
        }
    }
}
