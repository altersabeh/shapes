import Foundation

class InputReader {
    public static func readInput() -> String {
        print("Your Answer >>> ", terminator: "")
        var userInput = readLine()
        userInput = userInput?.trimmingCharacters(in: .whitespaces).lowercased()
        readExit(userInput!)
        return userInput!
    }

    public static func readNumber() -> Double {
        while true {
            let userInput = readInput()

            if let number = Double(userInput) {
                return number
            } else {
                print("Invalid input. Please enter a valid number.")
            }
        }
    }

    private static func readExit(_ userInput: String) {
        if userInput == "exit" || userInput == "e" {
            print("Thank you for using the Shapes CLI!")
            exit(0)
        }
    }
}
