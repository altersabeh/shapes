#ifndef SHAPES_CLIENT_SHELL_HPP
#define SHAPES_CLIENT_SHELL_HPP

#include <shapes.hpp>
#include <string>

namespace shapes::client {
namespace shell {
    auto readInput() -> std::string;
    auto readNumber() -> double;
    void readExit();

    class Handler {
      private:
        friend class Runner;
        static void handleCircle();
        static void handleRectangle();
        static void handleSquare();
    };

    class Runner {
      public:
        Runner();
        void run();

      private:
        static void startingMessage();
    };
} // namespace shell
} // namespace shapes::client

#endif // SHAPES_CLIENT_SHELL_HPP
