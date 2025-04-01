#include "fixtures/fixtures.hpp"
#include <gtest/gtest.h>
#include <shapes/base/commons.hpp>

using namespace std;

namespace shapes::tests {
namespace {
    void assertMeasurable(
        const Dimensional& geometricShape,
        double expectedArea,
        double expectedPerimeter
    ) {
        const double areaDiff = abs(geometricShape.area() - expectedArea);
        const double perimeterDiff = abs(geometricShape.perimeter() - expectedPerimeter);

        EXPECT_TRUE(areaDiff < 0.001) << "AREA NOT EQUAL";
        EXPECT_TRUE(perimeterDiff < 0.001) << "PERIMETER NOT EQUAL!";
    }

    TEST(CommonsTest, CircleImplementsMeasurable) {
        auto circle = fixtures::setupCircle();
        assertMeasurable(circle, 754.767, 97.389);
    }

    TEST(CommonsTest, RectangleImplementsMeasurable) {
        auto rectangle = fixtures::setupRectangle();
        assertMeasurable(rectangle, 756.437, 112.0);
    }

    TEST(CommonsTest, SquareImplementsMeasurable) {
        auto square = fixtures::setupSquare();
        assertMeasurable(square, 105.062, 41.0);
    }
} // namespace
} // namespace shapes::tests
