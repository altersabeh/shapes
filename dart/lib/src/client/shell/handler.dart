import "package:shapes/base/models.dart";

import "input_reader.dart";

void handleCircle() {
  print("What is the radius of the circle?");
  var radius = readDouble();
  var circle = Circle(radius);
  print("Area: ${circle.area().toStringAsFixed(3)}");
  print("Circumference: ${circle.perimeter().toStringAsFixed(3)}");
}

void handleRectangle() {
  print("What is the width of the rectangle?");
  var width = readDouble();
  print("What is the length of the rectangle?");
  var length = readDouble();
  var rectangle = Rectangle(width, length);
  print("Area: ${rectangle.area().toStringAsFixed(3)}");
  print("Perimeter: ${rectangle.perimeter().toStringAsFixed(3)}");
}

void handleSquare() {
  print("What is the side length of the square?");
  var side = readDouble();
  var square = Square(side);
  print("Area: ${square.area().toStringAsFixed(3)}");
  print("Perimeter: ${square.perimeter().toStringAsFixed(3)}");
}
