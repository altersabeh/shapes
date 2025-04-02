module shapes.client.shell.handler;

import shapes.client.shell.inputreader;
import shapes.base.models;
import std.format;
import std.stdio;

static void handleCircle() {
    writeln("What is the radius of the circle?");
    const double radius = readNumber();
    auto circle = new Circle(radius);
    writeln("Area: ", format("%.3f", circle.area()));
    writeln("Circumference: ", format("%.3f", circle.perimeter()));
}

static void handleRectangle() {
    writeln("What is the width of the rectangle?");
    const double width = readNumber();
    writeln("What is the height of the rectangle?");
    const double height = readNumber();
    auto rectangle = new Rectangle(width, height);
    writeln("Area: ", format("%.3f", rectangle.area()));
    writeln("Perimeter: ", format("%.3f", rectangle.perimeter()));
}

static void handleSquare() {
    writeln("What is the side length of the square?");
    const double side = readNumber();
    auto square = new Square(side);
    writeln("Area: ", format("%.3f", square.area()));
    writeln("Perimeter: ", format("%.3f", square.perimeter()));
}
