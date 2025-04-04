#include <boost/algorithm/string.hpp>
#include <iostream>
#include <print>
#include <shapes/client/shell.hpp>

using namespace boost::algorithm;
using namespace std;

namespace shapes::client::shell {
namespace {
    inline void readExit(const string& userInput) {
        if (userInput == "exit" || userInput == "e") {
            std::println("Thank you for using the Shapes CLI!");
            std::quick_exit(0);
        }
    }
} // namespace

auto readInput() -> string {
    std::print("Your Answer >>> ");
    string userInput;
    getline(cin, userInput);
    userInput = to_lower_copy(trim_copy(userInput));
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
} // namespace shapes::client::shell
