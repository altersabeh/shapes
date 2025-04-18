#include <shapes/base/models.hpp>

namespace shapes::base::models {
Rectangle::Rectangle(double width, double height) {
    const double dimOne = (width > 0) ? width : 1;
    const double dimTwo = (height > 0) ? height : 1;
    this->width = dimOne;
    this->height = dimTwo;
}

auto Rectangle::area() const -> double {
    return width * height;
}

auto Rectangle::perimeter() const -> double {
    return 2 * (width + height);
}
} // namespace shapes::base::models
