#include <shapes/base/commons.hpp>

using namespace std;

namespace shapes::base::commons {
BaseShape::BaseShape(const vector<map<string, double>>& dimensions)
  : dimensions(dimensions) { }

BaseShape::~BaseShape() = default;

auto BaseShape::getDimensions() const -> const vector<map<string, double>>& {
    return dimensions;
}

auto BaseShape::showAvailableDimensionCount() const -> size_t {
    return dimensions.size();
}

auto BaseShape::validateShape() -> bool {
    return true;
}
} // namespace shapes::base::commons
