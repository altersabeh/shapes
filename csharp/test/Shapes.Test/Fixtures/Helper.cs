using Shapes.Base.Models;

namespace Shapes.Tests.Fixtures;

public class Helper {
    public static Circle SetupCircle() {
        double radius = 15.5;
        return new Circle(radius);
    }

    public static Rectangle SetupRectangle() {
        double width = 22.75;
        double height = 33.25;
        return new Rectangle(width, height);
    }

    public static Square SetupSquare() {
        double side = 10.25;
        return new Square(side);
    }
}
