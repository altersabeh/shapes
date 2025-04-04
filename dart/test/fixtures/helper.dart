import "package:shapes/base/models.dart";

Circle setupCircle() {
  double radius = 15.5;
  return Circle(radius);
}

Rectangle setupRectangle() {
  double width = 22.75;
  double height = 33.25;
  return Rectangle(width, height);
}

Square setupSquare() {
  double side = 10.25;
  return Square(side);
}
