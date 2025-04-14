import Foundation
import ShapesBaseModels

public class Handler {
    public static func handleCircle() {
        print("What is the radius of the circle?")
        let radius = InputReader.readNumber()
        let circle = Circle(radius)
        print(String(format: "Area: %.3f", circle.area()))
        print(String(format: "Circumference: %.3f", circle.perimeter()))
    }

    public static func handleRectangle() {
        print("What is the width of the rectangle?")
        let width = InputReader.readNumber()
        print("What is the height of the rectangle?")
        let height = InputReader.readNumber()
        let rectangle = Rectangle(width, height)
        print(String(format: "Area: %.3f", rectangle.area()))
        print(String(format: "Perimeter: %.3f", rectangle.perimeter()))
    }

    public static func handleSquare() {
        print("What is the side length of the square?")
        let side = InputReader.readNumber()
        let square = Square(side)
        print(String(format: "Area: %.3f", square.area()))
        print(String(format: "Perimeter: %.3f", square.perimeter()))
    }
}
