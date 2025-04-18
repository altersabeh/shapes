import "dart:math";

import "package:shapes/base/commons.dart";

class Square implements Dimensional {
  double? _side;

  Square(double side) {
    double dimOne = side > 0 ? side : 1;
    _side = dimOne;
  }

  @override
  double area() {
    return pow(_side!, 2).toDouble();
  }

  @override
  double perimeter() {
    return 4 * _side!;
  }
}
