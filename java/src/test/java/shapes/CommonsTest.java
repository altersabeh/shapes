package shapes;

import static org.junit.jupiter.api.Assertions.assertTrue;

import org.junit.jupiter.api.DisplayName;
import org.junit.jupiter.api.Nested;
import org.junit.jupiter.api.Test;

import shapes.base.commons.Dimensional;
import shapes.fixtures.Helper;

@DisplayName("Commons Tests")
class CommonsTest {
    @Nested
    @DisplayName("Dimensional Tests")
    class DimensionalTest {
        @Test
        @DisplayName("Test Circle Implements Dimensional")
        void testCircleImplementsDimensional() {
            var circle = Helper.setupCircle();
            assertDimensional(circle, 754.767, 97.389);
        }

        @Test
        @DisplayName("Test Rectangle Implements Dimensional")
        void testRectangleImplementsDimensional() {
            var rectangle = Helper.setupRectangle();
            assertDimensional(rectangle, 756.437, 112.0);
        }

        @Test
        @DisplayName("Test Square Implements Dimensional")
        void testSquareImplementsDimensional() {
            var square = Helper.setupSquare();
            assertDimensional(square, 105.062, 41.0);
        }
    }

    void assertDimensional(
        Dimensional dimensionalShape,
        double expectedArea,
        double expectedPerimeter
    ) {
        double areaDiff = Math.abs(dimensionalShape.area() - expectedArea);
        double perimeterDiff = Math.abs(dimensionalShape.perimeter() - expectedPerimeter);

        assertTrue(areaDiff < 0.001, "AREA NOT EQUAL");
        assertTrue(perimeterDiff < 0.001, "PERIMETER NOT EQUAL!");
    }
}
