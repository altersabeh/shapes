#include <shapes/base/models.hpp>

namespace shapes::base::models {
Rectangle::Rectangle(double width, double height) {
    const double dim1 = (width > 0) ? width : 1;
    const double dim2 = (height > 0) ? height : 1;
    this->width = dim1;
    this->height = dim2;
}

auto Rectangle::area() const -> double {
    return width * height;
}

auto Rectangle::perimeter() const -> double {
    return 2 * (width + height);
}
} // namespace shapes::base::models
