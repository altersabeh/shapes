using NUnit.Framework;

using Shapes.Base.Commons;

namespace Shapes.Tests;

[TestFixture(TestName = "Commons Tests")]
class UtilsTests {
    [TestFixture(TestName = "IMeasurable Tests")]
    class IMeasurableTest {
        [TestCase(TestName = "Test Circle Implements IMeasurable")]
        public void TestCircleImplementsIMeasurable() {
            var circle = Fixtures.SetupCircle();
            AssertIMeasurable(circle, 754.767, 97.389);
        }

        [TestCase(TestName = "Test Rectangle Implements IMeasurable")]
        public void TestRectangleImplementsIMeasurable() {
            var rectangle = Fixtures.SetupRectangle();
            AssertIMeasurable(rectangle, 756.437, 112.0);
        }

        [TestCase(TestName = "Test Square Implements IMeasurable")]
        public void TestSquareImplementsIMeasurable() {
            var square = Fixtures.SetupSquare();
            AssertIMeasurable(square, 105.0625, 41.0);
        }
    }

    static void AssertIMeasurable(
        IDimensional shape,
        double expectedArea,
        double expectedperimeter
    ) {
        double areaDiff = Math.Abs(shape.Area() - expectedArea);
        double perimeterDiff = Math.Abs(shape.Perimeter() - expectedperimeter);

        Assert.That(areaDiff, Is.LessThan(0.001), "AREA NOT EQUAL");
        Assert.That(perimeterDiff, Is.LessThan(0.001), "PERIMETER NOT EQUAL!");
    }
}
