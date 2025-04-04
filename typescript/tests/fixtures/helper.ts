import { Circle, Rectangle, Square } from "shapes/base/models";

export function setupCircle(): Circle {
    const radius = 15.5;
    return new Circle(radius);
}

export function setupRectangle(): Rectangle {
    const width = 22.75;
    const height = 33.25;
    return new Rectangle(width, height);
}

export function setupSquare(): Square {
    const side = 10.25;
    return new Square(side);
}
