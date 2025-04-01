package shapes;

import static org.junit.jupiter.api.Assertions.assertTrue;

import org.junit.jupiter.api.DisplayName;
import org.junit.jupiter.api.Nested;
import org.junit.jupiter.api.Test;

import shapes.base.commons.Dimensional;

@DisplayName("Commons Tests")
class CommonsTest {
    @Nested
    @DisplayName("Measurable Tests")
    class MeasurableTest {
        @Test
        @DisplayName("Test Circle Implements Measurable")
        void testCircleImplementsMeasurable() {
            var circle = Fixtures.setupCircle();
            assertMeasurable(circle, 754.767, 97.389);
        }

        @Test
        @DisplayName("Test Rectangle Implements Measurable")
        void testRectangleImplementsMeasurable() {
            var rectangle = Fixtures.setupRectangle();
            assertMeasurable(rectangle, 756.437, 112.0);
        }

        @Test
        @DisplayName("Test Square Implements Measurable")
        void testSquareImplementsMeasurable() {
            var square = Fixtures.setupSquare();
            assertMeasurable(square, 105.062, 41.0);
        }
    }

    void assertMeasurable(
        Dimensional geometricShape,
        double expectedArea,
        double expectedPerimeter
    ) {
        double areaDiff = Math.abs(geometricShape.area() - expectedArea);
        double perimeterDiff = Math.abs(geometricShape.perimeter() - expectedPerimeter);

        assertTrue(areaDiff < 0.001, "AREA NOT EQUAL");
        assertTrue(perimeterDiff < 0.001, "PERIMETER NOT EQUAL!");
    }
}
