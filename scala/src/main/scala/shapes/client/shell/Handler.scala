package shapes.client.shell

import shapes.base.models.{Circle, Rectangle, Square}

private object Handler {
    def handleCircle(): Unit = {
        println("What is the radius of the circle?")
        val radius = readNumber()
        val circle = new Circle(radius)
        println(f"Area: ${circle.area}%.3f")
        println(f"Circumference: ${circle.perimeter}%.3f")
    }

    def handleRectangle(): Unit = {
        println("What is the width of the rectangle?")
        val width = readNumber()
        println("What is the height of the rectangle?")
        val height = readNumber()
        val rectangle = new Rectangle(width, height)
        println(f"Area: ${rectangle.area}%.3f")
        println(f"Perimeter: ${rectangle.perimeter}%.3f")
    }

    def handleSquare(): Unit = {
        println("What is the side length of the square?")
        val side = readNumber()
        val square = new Square(side)
        println(f"Area: ${square.area}%.3f")
        println(f"Perimeter: ${square.perimeter}%.3f")
    }
}
