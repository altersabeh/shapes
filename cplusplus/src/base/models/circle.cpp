#define _USE_MATH_DEFINES

#include <boost/algorithm/string.hpp>
#include <boost/format.hpp>
#include <cmath>
#include <print>
#include <shapes/base/models.hpp>
#include <sstream>

using namespace boost::algorithm;
using namespace std;
using frmt = boost::format;

namespace shapes::base::models {
Circle::Circle(double radius)
  : BaseShape({
        {{"radius", std::max(radius, 1.0)}},
        {{"diameter", std::max(radius, 1.0) * 2}},
        {{"curvature", 1.0 / std::max(radius, 1.0)}},
    }) {
    const double dimOne = (radius > 0) ? radius : 1;
    this->radius = dimOne;
}

auto Circle::getColor() const -> const std::string& {
    return color;
}

void Circle::setColor(const std::string& value) {
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
    vector<string> parts;
    for (const auto& dimensions : getDimensions()) {
        for (const auto& [key, value] : dimensions) {
            ostringstream entry;
            entry << to_upper_copy(key) << ": " << str(frmt("%.3f") % value);
            parts.push_back(entry.str());
        }
    }

    return join(parts, " | ");
}
} // namespace shapes::base::models
