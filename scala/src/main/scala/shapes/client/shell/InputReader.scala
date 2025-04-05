package shapes.client.shell

import scala.io.StdIn

private def readInput(): String = {
    print("Your Answer >>> ")
    val userInput = StdIn.readLine().trim.toLowerCase
    readExit(userInput)
    userInput
}

private def readNumber(): Double = {
    while (true) {
        try {
            return readInput().toDouble
        } catch {
            case _: NumberFormatException =>
                println("Invalid number. Please try again.")
        }
    }
    0.0 // Unreachable, but required for compilation
}

private def readExit(userInput: String): Unit = {
    if (userInput == "exit" || userInput == "e") {
        println("Thank you for using the Shapes CLI!")
        sys.exit(0)
    }
}
