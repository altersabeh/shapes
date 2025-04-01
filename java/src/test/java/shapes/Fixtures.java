package shapes;

import shapes.base.models.Circle;
import shapes.base.models.Rectangle;
import shapes.base.models.Square;

class Fixtures {
    static Circle setupCircle() {
        double radius = 15.5;
        return new Circle(radius);
    }

    static Rectangle setupRectangle() {
        double width = 22.75;
        double height = 33.25;
        return new Rectangle(width, height);
    }

    static Square setupSquare() {
        double side = 10.25;
        return new Square(side);
    }
}
