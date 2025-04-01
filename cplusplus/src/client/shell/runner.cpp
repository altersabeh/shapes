#include "handler.hpp"
#include <functional>
#include <shapes/client/shell.hpp>

using namespace std;

namespace shapes::client::shell {
Runner::Runner() {
    std::println("{}", string(53, '='));
    std::println("Welcome to the Area and Perimeter Calculator!");
    std::println("{}", string(53, '='));
}

void Runner::startingMessage() {
    std::println("Choose a shape to calculate its area and perimeter.");
    std::println("  [C] CIRCLE");
    std::println("  [R] RECTANGLE");
    std::println("  [S] SQUARE");
    std::println("Type '[E]XIT' to quit the program.");
}

void Runner::run() {
    auto printThankYouMessage = []() {
        std::println("Thank you for using the Shapes CLI!");
        std::println("P.S. Did you know? The secret code is 42!");
    };

    while (true) {
        startingMessage();

        const string shape = readInput();
        if (shape == "q") {
            printThankYouMessage();
            break;
        }

        unordered_map<string, function<void()>> actions = {
            {"circle", Handler::handleCircle},
            {"c", Handler::handleCircle},
            {"rectangle", Handler::handleRectangle},
            {"r", Handler::handleRectangle},
            {"square", Handler::handleSquare},
            {"s", Handler::handleSquare},
        };

        auto action = (actions.contains(shape)) ? actions[shape] : []() {
            std::println("Invalid input. Please try again.");
            std::println("Type one of the listed options.");
        };

        action();

        std::println("{}", string(53, '='));
    }
}
} // namespace shapes::client::shell
