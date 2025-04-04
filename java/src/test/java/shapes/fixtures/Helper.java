package shapes.fixtures;

import shapes.base.models.Circle;
import shapes.base.models.Rectangle;
import shapes.base.models.Square;

public class Helper {
    public static Circle setupCircle() {
        double radius = 15.5;
        return new Circle(radius);
    }

    public static Rectangle setupRectangle() {
        double width = 22.75;
        double height = 33.25;
        return new Rectangle(width, height);
    }

    public static Square setupSquare() {
        double side = 10.25;
        return new Square(side);
    }
}
