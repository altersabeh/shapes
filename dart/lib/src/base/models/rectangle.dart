import "package:shapes/base/commons.dart";

class Rectangle implements Dimensional {
  double? _width;
  double? _height;

  Rectangle(double width, double height) {
    double dim1 = width > 0 ? width : 1;
    double dim2 = height > 0 ? height : 1;
    _width = dim1;
    _height = dim2;
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
