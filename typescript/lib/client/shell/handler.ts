import { Circle, Rectangle, Square } from "../../base/models";
import { readNumber } from "./input-reader";

export async function handleCircle(): Promise<void> {
    console.log("What is the radius of the circle?");
    const radius = await readNumber();
    const circle = new Circle(radius);
    console.log(`Area: ${circle.area().toFixed(3)}`);
    console.log(`Circumference: ${circle.perimeter().toFixed(3)}`);
}

export async function handleRectangle(): Promise<void> {
    console.log("What is the width of the rectangle?");
    const width = await readNumber();
    console.log("What is the height of the rectangle?");
    const height = await readNumber();
    const rectangle = new Rectangle(width, height);
    console.log(`Area: ${rectangle.area().toFixed(3)}`);
    console.log(`Perimeter: ${rectangle.perimeter().toFixed(3)}`);
}

export async function handleSquare(): Promise<void> {
    console.log("What is the side length of the square?");
    const side = await readNumber();
    const square = new Square(side);
    console.log(`Area: ${square.area().toFixed(3)}`);
    console.log(`Perimeter: ${square.perimeter().toFixed(3)}`);
}
