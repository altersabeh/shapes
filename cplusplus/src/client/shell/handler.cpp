#include <print>
#include <shapes/base/models.hpp>
#include <shapes/client/shell.hpp>

using namespace shapes::base::models;
using namespace shapes::client::shell;

namespace shapes::client::shell {
void Handler::handleCircle() {
    std::println("What is the radius of the circle?");
    const double radius = readNumber();
    const Circle circle(radius);
    std::println("Area: {:.3f}", circle.area());
    std::println("Perimeter: {:.3f}", circle.perimeter());
};

void Handler::handleRectangle() {
    std::println("What is the width of the rectangle?");
    const double width = readNumber();
    std::println("What is the height of the rectangle?");
    const double height = readNumber();
    const Rectangle rectangle(width, height);
    std::println("Area: {:.3f}", rectangle.area());
    std::println("Perimeter: {:.3f}", rectangle.perimeter());
};

void Handler::handleSquare() {
    std::println("What is the side length of the square?");
    const double side = readNumber();
    const Square square(side);
    std::println("Area: {:.3f}", square.area());
    std::println("Perimeter: {:.3f}", square.perimeter());
}; // namespace
} // namespace shapes::client::shell
