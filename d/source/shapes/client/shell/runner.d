module shapes.client.shell.runner;

import shapes.client.shell.inputreader;
import std.range;
import std.stdio;
import std.string;

import handler = shapes.client.shell.handler;

final class Runner {
    this() {
        writeln(repeat('=', 53));
        writeln("Welcome to the Area and Perimeter Calculator!");
        writeln(repeat('=', 53));
    }

    private static void startingMessage() {
        writeln("Choose a shape to calculate its area and perimeter.");
        writeln("  [C] CIRCLE");
        writeln("  [R] RECTANGLE");
        writeln("  [S] SQUARE");
        writeln("Type '[E]XIT' to quit the program.");
    }

    void run() {
        void delegate() printThankYouMessage = () {
            writeln("Thank you for using the Shapes CLI!");
            writeln("P.S. Did you know? The secret code is 42!");
        };

        while (true) {
            startingMessage();

            string shape = readInput();
            if (shape == "q") {
                printThankYouMessage();
                break;
            }

            auto actions = [
                "circle" : () => handler.handleCircle(),
                "c" : () => handler.handleCircle(),
                "rectangle" : () => handler.handleRectangle(),
                "r" : () => handler.handleRectangle(),
                "square" : () => handler.handleSquare(),
                "s" : () => handler.handleSquare(),
            ];

            auto action = actions.get(shape, () {
                writeln("Invalid input. Please try again.");
                writeln("Type one of the listed options.");
            });

            action();

            writeln(repeat('=', 53));
        }
    }
}
