#include <shapes/base/commons.hpp>

using namespace std;

namespace shapes::base::commons {
BaseShape::BaseShape(const vector<map<string, double>>& dimensions)
  : dimensions(dimensions) { }

BaseShape::~BaseShape() = default;

auto BaseShape::getDimensions() const -> const vector<map<string, double>>& {
    return dimensions;
}

auto BaseShape::getDimensionAvailable() const -> size_t {
    return dimensions.size();
}

auto BaseShape::isAShape() -> bool {
    return true;
}
} // namespace shapes::base::commons
