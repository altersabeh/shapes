#include <cmath>
#include <shapes/base/models.hpp>

namespace shapes::base::models {
Square::Square(double side) {
    const double dimOne = (side > 0) ? side : 1;
    this->side = dimOne;
}

auto Square::area() const -> double {
    return std::pow(side, 2);
}

auto Square::perimeter() const -> double {
    return 4 * side;
}
} // namespace shapes::base::models
