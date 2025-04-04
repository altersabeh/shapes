module tests.fixtures.helper;

import shapes.base.models;

Circle setupCircle() {
    const double radius = 15.5;
    return new Circle(radius);
}

Rectangle setupRectangle() {
    const double width = 22.75;
    const double height = 33.25;
    return new Rectangle(width, height);
}

Square setupSquare() {
    const double side = 10.25;
    return new Square(side);
}
