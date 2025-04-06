using static Shapes.Client.Shell.InputReader;

namespace Shapes.Client.Shell;

public sealed class Runner {
    public Runner() {
        Console.WriteLine(new string('=', 53));
        Console.WriteLine("Welcome to the Area and Perimeter Calculator!");
        Console.WriteLine(new string('=', 53));
    }

    private static void StartingMessage() {
        Console.WriteLine(
            "Choose a shape to calculate its area and perimeter."
        );
        Console.WriteLine("  [C] CIRCLE");
        Console.WriteLine("  [R] RECTANGLE");
        Console.WriteLine("  [S] SQUARE");
        Console.WriteLine("Type '[E]XIT' to quit the program.");
    }

    public void Run() {
        Action printThankYouMessage = () => {
            Console.WriteLine("Thank you for using the Shapes CLI!");
            Console.WriteLine("P.S. Did you know? The secret code is 42!");
        };

        while (true) {
            Runner.StartingMessage();

            string shape = ReadInput();
            if (shape == "q") {
                printThankYouMessage();
                break;
            }

            Dictionary<string, Action>? actions = new() {
                ["circle"] = Handler.HandleCircle,
                ["c"] = Handler.HandleCircle,
                ["rectangle"] = Handler.HandleRectangle,
                ["r"] = Handler.HandleRectangle,
                ["square"] = Handler.HandleSquare,
                ["s"] = Handler.HandleSquare,
            };

            var action = actions.TryGetValue(shape, out Action? value)
                ? value
                : () => {
                    Console.WriteLine("Invalid input. Please try again.");
                    Console.WriteLine("Type one of the listed options.");
                };

            action();

            Console.WriteLine(new string('=', 53));
        }
    }
}
