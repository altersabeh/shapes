import Foundation

public final class Runner {
    public init() {
        print(String(repeating: "=", count: 53))
        print("Welcome to the Area and Perimeter Calculator!")
        print(String(repeating: "=", count: 53))
    }

    private static func startingMessage() {
        print("Choose a shape to calculate its area and perimeter.")
        print("  [C] CIRCLE")
        print("  [R] RECTANGLE")
        print("  [S] SQUARE")
        print("Type '[E]XIT' to quit the program.")
    }

    public func run() {
        let printThankYouMessage = {
            print("Thank you for using the Shapes CLI!")
            print("P.S. Did you know? The secret code is 42!")
        }

        while true {
            Runner.startingMessage()

            let shape = InputReader.readInput()
            if shape == "q" || shape == "exit" || shape == "e" {
                printThankYouMessage()
                break
            }

            let actions: [String: () -> Void] = [
                "circle": Handler.handleCircle,
                "c": Handler.handleCircle,
                "rectangle": Handler.handleRectangle,
                "r": Handler.handleRectangle,
                "square": Handler.handleSquare,
                "s": Handler.handleSquare,
            ]

            let action =
                actions[shape] ?? {
                    print("Invalid input. Please try again.")
                    print("Type one of the listed options.")
                }

            action()

            print(String(repeating: "=", count: 53))
        }
    }
}
