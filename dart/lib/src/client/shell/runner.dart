import "handler.dart" as handler;
import "input_reader.dart";

class Runner {
  Runner() {
    print("=" * 50);
    print("Welcome to the Area and Perimeter Calculator!");
    print("=" * 50);
  }

  static void _startingMessage() {
    print("Choose a shape to calculate its area and perimeter.");
    print(" [c] Circle");
    print(" [r] Rectangle");
    print(" [s] Square");
    print("Type '[e]xit' to quit the program.");
  }

  void run() {
    // ignore: prefer_function_declarations_over_variables
    void Function() printThankYouMessage = () {
      print("Thank you for using the Shapes CLI!");
      print("P.S. Did you know? The secret code is 42!");
    };

    while (true) {
      Runner._startingMessage();

      var shape = readInput();
      if (shape == "q") {
        printThankYouMessage();
        break;
      }

      Map<String, void Function()> actions = {
        "circle": () => handler.handleCircle(),
        "c": () => handler.handleCircle(),
        "rectangle": () => handler.handleRectangle(),
        "r": () => handler.handleRectangle(),
        "square": () => handler.handleSquare(),
        "s": () => handler.handleSquare(),
      };

      var action =
          actions[shape] ??
          () {
            print("Invalid input. Please try again.");
            print("Type one of the listed options.");
          };

      action();

      print("=" * 50);
    }
  }
}
