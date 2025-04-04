#ifndef SHAPES_TESTS_FIXTURES_HPP
#define SHAPES_TESTS_FIXTURES_HPP

#include <shapes/base/models.hpp>

using namespace std;
using namespace shapes::base::models;

namespace shapes::tests::fixtures {
namespace {
    inline auto setupCircle() -> Circle {
        const double radius = 15.5;
        return Circle(radius);
    }

    inline auto setupRectangle() -> Rectangle {
        const double width = 22.75;
        const double height = 33.25;
        return Rectangle(width, height);
    }

    inline auto setupSquare() -> Square {
        const double side = 10.25;
        return Square(side);
    }
} // namespace
} // namespace shapes::tests::fixtures

#endif // SHAPES_TESTS_FIXTURES_HPP
