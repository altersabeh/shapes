#ifndef SHAPES_CLIENT_SHELL_INPUT_READER_HPP
#define SHAPES_CLIENT_SHELL_INPUT_READER_HPP

#include <iostream>
#include <print>
#include <shapes/client/shell.hpp>
#include <string>

using namespace std;

namespace shapes::client::shell {
namespace {
    void readExit(const string& userInput) {
        if (userInput == "exit" || userInput == "e") {
            std::println("Thank you for using the Shapes CLI!");
            std::quick_exit(0);
        }
    }

    auto readInput() -> string {
        std::print("Your Answer >>> ");
        string userInput;
        getline(cin, userInput);
        userInput = string(userInput.begin(), userInput.end());
        readExit(userInput);
        return userInput;
    }

    auto readNumber() -> double {
        while (true) {
            const string userInput = readInput();

            try {
                return stod(userInput);
            } catch (const invalid_argument&) {
                std::println("Invalid number. Please try again.");
            }
        }
    }
} // namespace
} // namespace shapes::client::shell

#endif // SHAPES_CLIENT_SHELL_INPUT_READER_HPP
