using NUnit.Framework;

namespace Shapes.Tests;

[TestFixture(TestName = "Shapes Test")]
class ShapesTests {
    private const double DELTA = 0.001;

    [TestFixture(TestName = "Circle Test")]
    [Category("Circle")]
    class CircleTests {
        [TestCase(TestName = "Test Circle Area")]
        [Category("Area")]
        public void TestCircleArea() {
            var circle = Fixtures.SetupCircle();
            double expected = 754.767;
            double actual = circle.Area();
            Assert.That(Math.Abs(actual - expected), Is.LessThan(DELTA));
        }

        [TestCase(TestName = "Test Circle Circumference")]
        [Category("Perimeter]")]
        public void TestCircleCircumference() {
            var circle = Fixtures.SetupCircle();
            double expected = 97.389;
            double actual = circle.Perimeter();
            Assert.That(Math.Abs(actual - expected), Is.LessThan(DELTA));
        }
    }

    [TestFixture(TestName = "Rectangle Test")]
    [Category("Rectangle")]
    class RectangleTests {
        [TestCase(TestName = "Test Rectangle Area")]
        [Category("Area")]
        public void TestRectangleArea() {
            var rectangle = Fixtures.SetupRectangle();
            double expected = 756.437;
            double actual = rectangle.Area();
            Assert.That(Math.Abs(actual - expected), Is.LessThan(DELTA));
        }

        [TestCase(TestName = "Test Rectangle Perimeter")]
        [Category("Perimeter")]
        public void TestRectanglePerimeter() {
            var rectangle = Fixtures.SetupRectangle();
            double expected = 112.0;
            double actual = rectangle.Perimeter();
            Assert.That(Math.Abs(actual - expected), Is.LessThan(DELTA));
        }
    }

    [TestFixture(TestName = "Square Test")]
    [Category("Square")]
    class SquareTests {
        [TestCase(TestName = "Test Square Area")]
        [Category("Area")]
        public void TestSquareArea() {
            var square = Fixtures.SetupSquare();
            double expected = 105.062;
            double actual = square.Area();
            Assert.That(Math.Abs(actual - expected), Is.LessThan(DELTA));
        }

        [TestCase(TestName = "Test Square Perimeter")]
        [Category("Perimeter")]
        public void TestSquarePerimeter() {
            var square = Fixtures.SetupSquare();
            double expected = 41.0;
            double actual = square.Perimeter();
            Assert.That(Math.Abs(actual - expected), Is.LessThan(DELTA));
        }
    }
}
