#ifndef SHAPES_CLIENT_SHELL_HPP
#define SHAPES_CLIENT_SHELL_HPP

#include <shapes.hpp>

namespace shapes::client {
namespace shell {
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
