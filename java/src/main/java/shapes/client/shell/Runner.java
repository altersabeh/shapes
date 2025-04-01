package shapes.client.shell;

import static shapes.client.shell.InputReader.readInput;

import java.util.HashMap;
import java.util.Map;

public final class Runner {
    public Runner() {
        System.out.println("=".repeat(53));
        System.out.println("Welcome to the Area and Perimeter Calculator!");
        System.out.println("=".repeat(53));
    }

    static void startingMessage() {
        System.out
                .println("Choose a shape to calculate its area and perimeter.");
        System.out.println("  [C] CIRCLE");
        System.out.println("  [R] RECTANGLE");
        System.out.println("  [S] SQUARE");
        System.out.println("Type '[E]XIT' to quit the program.");
    }

    public void run() {
        Runnable printThankYouMessage = () -> {
            System.out.println("Thank you for using the Shapes CLI!");
            System.out.println("P.S. Did you know? The secret code is 42!");
        };

        while (true) {
            startingMessage();

            String shape = readInput();
            if (shape.equals("q")) {
                printThankYouMessage.run();
                break;
            }

            Map<String, Runnable> actions = new HashMap<>() {
                {
                    put("circle", Handler::handleCircle);
                    put("s", Handler::handleCircle);
                    put("rectangle", Handler::handleRectangle);
                    put("r", Handler::handleRectangle);
                    put("square", Handler::handleSquare);
                    put("s", Handler::handleSquare);
                }
            };

            Runnable action = actions.getOrDefault(shape, () -> {
                System.out.println("Invalid input. Please try again.");
                System.out.println("Type one of the listed options.");
            });

            action.run();

            System.out.println("=".repeat(53));
        }
    }
}
