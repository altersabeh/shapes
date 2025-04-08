namespace Shapes.Client.Shell;

sealed class InputReader {
    public static string ReadInput() {
        Console.Write("Your Answer >>> ");
        string? userInput = Console.ReadLine()!;
        userInput = userInput.Trim().ToLower();
        ReadExit(userInput);
        return userInput;
    }

    public static double ReadNumber() {
        while (true) {
            string userInput = ReadInput();

            if (double.TryParse(userInput, out double result)) {
                return result;
            } else {
                Console.WriteLine("Invalid number. Please try again.");
            }
        }
    }

    private static void ReadExit(string userInput) {
        if (userInput.Equals("exit") || userInput.Equals("e")) {
            Console.WriteLine("Thank you for using the Shapes CLI!");
            Environment.Exit(0);
        }
    }
}
