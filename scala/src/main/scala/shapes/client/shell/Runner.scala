package shapes.client.shell

import scala.annotation.tailrec

final class Runner {
    println("=" * 53)
    println("Welcome to the Area and Perimeter Calculator!")
    println("=" * 53)

    private def startingMessage(): Unit = {
        println("Choose a shape to calculate its area and perimeter.")
        println("  [C] CIRCLE")
        println("  [R] RECTANGLE")
        println("  [S] SQUARE")
        println("Type '[E]XIT' to quit the program.")
    }

    def run(): Unit = {
        val printThankYouMessage = () => {
            println("Thank you for using the Shapes CLI!")
            println("P.S. Did you know? The secret code is 42!")
        }

        while (true) {
            startingMessage()
            val shape = readInput()

            if (shape == "q" || shape == "exit" || shape == "e") {
                printThankYouMessage()
                return
            }

            val actions: Map[String, () => Unit] = Map(
              "circle" -> (() => Handler.handleCircle()),
              "c" -> (() => Handler.handleCircle()),
              "rectangle" -> (() => Handler.handleRectangle()),
              "r" -> (() => Handler.handleRectangle()),
              "square" -> (() => Handler.handleSquare()),
              "s" -> (() => Handler.handleSquare())
            )

            val action = actions.getOrElse(
              shape, {
                  println("Invalid input. Please try again.")
                  println("Type one of the listed options.")
                  () => ()
              }
            )

            action()

            println("=" * 53)
        }
    }
}
