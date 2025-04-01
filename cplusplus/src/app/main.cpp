#include <shapes/base/models.hpp>
#include <shapes/client/shell.hpp>

using namespace shapes::client::shell;
using namespace shapes::base::models;

auto main() -> int {
    Runner* program = new Runner();

    Circle* circle = new Circle(15.25);
    circle->printDescription();

    program->run();
}
