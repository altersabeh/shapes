package shapes.client.shell;

import static shapes.client.shell.InputReader.readNumber;

import shapes.base.models.Circle;
import shapes.base.models.Rectangle;
import shapes.base.models.Square;

final class Handler {
    static void handleCircle() {
        System.out.println("What is the radius of the circle?");
        double radius = readNumber();
        Circle circle = new Circle(radius);
        System.out.printf("Area: %.3f%n", circle.area());
        System.out.printf("Perimeter: %.3f%n", circle.perimeter());
    }

    static void handleRectangle() {
        System.out.println("What is the width of the rectangle?");
        double width = readNumber();
        System.out.println("What is the height of the rectangle?");
        double length = readNumber();
        Rectangle rectangle = new Rectangle(length, width);
        System.out.printf("Area: %.3f%n", rectangle.area());
        System.out.printf("Perimeter: %.3f%n", rectangle.perimeter());
    }

    static void handleSquare() {
        System.out.println("What is the side length of the square?");
        double side = readNumber();
        Square square = new Square(side);
        System.out.printf("Area: %.3f%n", square.area());
        System.out.printf("Perimeter: %.3f%n", square.perimeter());
    }
}
