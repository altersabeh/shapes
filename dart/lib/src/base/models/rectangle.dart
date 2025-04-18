import "package:shapes/base/commons.dart";

class Rectangle implements Dimensional {
  double? _width;
  double? _height;

  Rectangle(double width, double height) {
    double dimOne = width > 0 ? width : 1;
    double dimTwo = height > 0 ? height : 1;
    _width = dimOne;
    _height = dimTwo;
  }

  @override
  double area() {
    return _width! * _height!;
  }

  @override
  double perimeter() {
    return 2 * (_width! + _height!);
  }
}
