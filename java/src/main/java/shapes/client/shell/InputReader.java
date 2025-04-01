package shapes.client.shell;

import java.util.Scanner;

final class InputReader {
    private static final Scanner scanner = new Scanner(System.in);

    static String readInput() {
        System.out.print("Your Answer >>> ");
        String userInput = scanner.nextLine();
        userInput = userInput.trim().toLowerCase();
        readExit(userInput);
        return userInput;
    }

    static double readNumber() {
        while (true) {
            String userInput = readInput();

            try {
                return Double.parseDouble(userInput);
            } catch (NumberFormatException e) {
                System.out.println("Invalid number. Please try again.");
            }
        }
    }

    private static void readExit(String userInput) {
        if (userInput.equals("exit") || userInput.equals("e")) {
            System.out.println("Thank you for using the Shapes CLI!");
            System.exit(0);
        }
    }
}
