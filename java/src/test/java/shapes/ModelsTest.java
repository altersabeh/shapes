package shapes;

import static org.junit.jupiter.api.Assertions.assertTrue;
import static shapes.fixtures.Helper.setupCircle;
import static shapes.fixtures.Helper.setupRectangle;
import static shapes.fixtures.Helper.setupSquare;

import org.junit.jupiter.api.DisplayName;
import org.junit.jupiter.api.Nested;
import org.junit.jupiter.api.Tag;
import org.junit.jupiter.api.Test;

import shapes.fixtures.Helper;

@DisplayName("Models Tests")
class ModelsTest {
    private static final double DELTA = 0.001;

    @Nested
    @Tag("Circle")
    @DisplayName("Circle Tests")
    class CircleTest {
        @Test
        @Tag("Area")
        @DisplayName("Test Circle Area")
        void testCircleArea() {
            var circle = setupCircle();
            double result = circle.area();
            double expected = 754.767;
            assertTrue(Math.abs(result - expected) < DELTA);
        }

        @Test
        @Tag("Perimeter")
        @DisplayName("Test Circle Circumference")
        void testCircleCircumference() {
            var circle = Helper.setupCircle();
            double result = circle.perimeter();
            double expected = 97.389;
            assertTrue(Math.abs(result - expected) < DELTA);
        }
    }

    @Nested
    @Tag("Rectangle")
    @DisplayName("Rectangle Tests")
    class RectangleTest {
        @Test
        @Tag("Area")
        @DisplayName("Test Rectangle Area")
        void testRectangleArea() {
            var rectangle = setupRectangle();
            double result = rectangle.area();
            double expected = 756.437;
            assertTrue(Math.abs(result - expected) < DELTA);
        }

        @Test
        @Tag("Perimeter")
        @DisplayName("Test Rectangle Perimeter")
        void testRectanglePerimeter() {
            var rectangle = setupRectangle();
            double result = rectangle.perimeter();
            double expected = 112.0;
            assertTrue(Math.abs(result - expected) < DELTA);
        }
    }

    @Nested
    @Tag("Square")
    @DisplayName("Square Tests")
    class SquareTest {
        @Test
        @Tag("Area")
        @DisplayName("Test Square Area")
        void testSquareArea() {
            var square = setupSquare();
            double result = square.area();
            double expected = 105.062;
            assertTrue(Math.abs(result - expected) < DELTA);
        }

        @Test
        @Tag("Perimeter")
        @DisplayName("Test Square Perimeter")
        void testSquarePerimeter() {
            var square = setupSquare();
            double result = square.perimeter();
            double expected = 41.0;
            assertTrue(Math.abs(result - expected) < DELTA);
        }
    }
}
