#define _USE_MATH_DEFINES

#include <cmath>
#include <iostream>
#include <print>
#include <shapes/base/models.hpp>
#include <sstream>

using namespace std;

namespace shapes::base::models {
Circle::Circle(double radius)
  : BaseShape({
        {{"radius", std::max(radius, 1.0)}},
        {{"diameter", std::max(radius, 1.0) * 2}},
        {{"curvature", 1.0 / std::max(radius, 1.0)}},
    }) {
    const double dim1 = (radius > 0) ? radius : 1;
    this->radius = dim1;
}

auto Circle::getColor() const -> const string& {
    return color;
}

void Circle::setColor(const string& value) {
    color = value;
}

void Circle::printDescription() const {
    std::println("Circle radius: {}", this->radius);
    std::println("Circle dimensions: {}", this->formatDimensions());
    std::println("Circle color: {}", this->color);
    std::println("Circle area: {}", this->area());
    std::println("Circle perimeter: {}", this->perimeter());
    std::println("Circle is displayable: {}", this->shouldDisplay());
    std::println("Circle is a shape: {}", Circle::validateShape());
}

auto Circle::area() const -> double {
    return M_PI * std::pow(radius, 2);
}

auto Circle::perimeter() const -> double {
    return 2 * M_PI * radius;
}

auto Circle::formatDimensions() const -> string {
    std::ostringstream oss;
    for (const auto& dim : getDimensions()) {
        for (const auto& [key, value] : dim) {
            oss << key << ": " << value << " | ";
        }
    }
    string formattedDimensions = oss.str().substr(0, oss.str().size() - 3);
    return formattedDimensions;
}
} // namespace shapes::base::models
