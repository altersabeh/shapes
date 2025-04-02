using Shapes.Base.Models;

using static Shapes.Client.Shell.InputReader;

namespace Shapes.Client.Shell;

sealed class Handler {
    public static void HandleCircle() {
        Console.WriteLine("What is the radius of the circle?");
        double radius = ReadNumber();
        Circle circle = new Circle(radius);
        Console.WriteLine("Area: {0:F3}", circle.Area());
        Console.WriteLine("Circumference: {0:F3}", circle.Perimeter());
    }

    public static void HandleRectangle() {
        Console.WriteLine("What is the width of the rectangle?");
        double width = ReadNumber();
        Console.WriteLine("What is the height of the rectangle?");
        double height = ReadNumber();
        Rectangle rectangle = new Rectangle(width, height);
        Console.WriteLine("Area: {0:F3}", rectangle.Area());
        Console.WriteLine("Perimeter: {0:F3}", rectangle.Perimeter());
    }

    public static void HandleSquare() {
        Console.WriteLine("What is the side length of the square?");
        double side = ReadNumber();
        Square square = new Square(side);
        Console.WriteLine("Area: {0:F3}", square.Area());
        Console.WriteLine("Perimeter: {0:F3}", square.Perimeter());
    }
}
