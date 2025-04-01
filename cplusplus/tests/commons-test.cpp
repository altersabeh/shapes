#include "fixtures/fixtures.hpp"
#include <gtest/gtest.h>
#include <shapes/base/commons.hpp>

using namespace std;

namespace shapes::tests {
namespace {
    void assertDimensional(
        const Dimensional& dimensionalShape,
        double expectedArea,
        double expectedPerimeter
    ) {
        const double areaDiff = abs(dimensionalShape.area() - expectedArea);
        const double perimeterDiff = abs(dimensionalShape.perimeter() - expectedPerimeter);

        EXPECT_TRUE(areaDiff < 0.001) << "AREA NOT EQUAL";
        EXPECT_TRUE(perimeterDiff < 0.001) << "PERIMETER NOT EQUAL!";
    }

    TEST(CommonsTest, CircleImplementsDimensional) {
        auto circle = fixtures::setupCircle();
        assertDimensional(circle, 754.767, 97.389);
    }

    TEST(CommonsTest, RectangleImplementsDimensional) {
        auto rectangle = fixtures::setupRectangle();
        assertDimensional(rectangle, 756.437, 112.0);
    }

    TEST(CommonsTest, SquareImplementsDimensional) {
        auto square = fixtures::setupSquare();
        assertDimensional(square, 105.062, 41.0);
    }
} // namespace
} // namespace shapes::tests
