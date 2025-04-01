#include <print>
#include <shapes/base/commons.hpp>

namespace shapes::base::commons {
Displayable::~Displayable() = default;

auto Displayable::isDisplayable() const -> bool {
    return true;
}

void Displayable::display() const {
    if (isDisplayable()) {
        std::println("Yes, this shape can be displayed.");
    } else {
        std::println("No, this shape cannot be displayed.");
    }
}
} // namespace shapes::base::commons
