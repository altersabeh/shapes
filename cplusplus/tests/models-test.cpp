#include "fixtures/helper.hpp"
#include <gtest/gtest.h>
#include <shapes/base/models.hpp>

using namespace std;

namespace helper = shapes::tests::fixtures;

namespace shapes::tests {
constexpr double DELTA = 0.001;

namespace circle_tests {
    TEST(CircleTest, Area) {
        auto circle = helper::setupCircle();
        const double result = circle.area();
        const double expected = 754.767;
        EXPECT_TRUE(abs(result - expected) < DELTA);
    }

    TEST(CircleTest, Perimeter) {
        auto circle = helper::setupCircle();
        const double result = circle.perimeter();
        const double expected = 97.389;
        EXPECT_TRUE(abs(result - expected) < DELTA);
    }
} // namespace circle_tests

namespace rectangle_tests {
    TEST(RectangleTest, Area) {
        auto rectangle = helper::setupRectangle();
        const double result = rectangle.area();
        const double expected = 756.437;
        EXPECT_TRUE(abs(result - expected) < DELTA);
    }

    TEST(RectangleTest, Perimeter) {
        auto rectangle = helper::setupRectangle();
        const double result = rectangle.perimeter();
        const double expected = 112.0;
        EXPECT_TRUE(abs(result - expected) < DELTA);
    }
} // namespace rectangle_tests

namespace square_tests {
    TEST(SquareTest, Area) {
        auto square = helper::setupSquare();
        const double result = square.area();
        const double expected = 105.062;
        EXPECT_TRUE(abs(result - expected) < DELTA);
    }

    TEST(SquareTest, Perimeter) {
        auto square = helper::setupSquare();
        const double result = square.perimeter();
        const double expected = 41.0;
        EXPECT_TRUE(abs(result - expected) < DELTA);
    }
} // namespace square_tests
} // namespace shapes::tests
