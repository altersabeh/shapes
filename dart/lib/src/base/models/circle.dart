import "dart:math";

import "package:shapes/base/commons.dart";

final class Circle extends BaseShape with Displayable implements Dimensional {
  double? _radius;
  String? _color;

  Circle(double radius)
    : super([
        {"radius": max(radius, 1)},
        {"diameter": max(radius, 1) * 2},
        {"curvature": 1 / max(radius, 1)},
      ]) {
    double dim1 = radius > 0 ? radius : 1;

    _radius = dim1;
    _color = "None";
  }

  String get color {
    return _color!;
  }

  set color(String value) {
    _color = value;
  }

  @override
  void printDescription() {
    print("Circle radius: $_radius");
    print("Circle dimensions: ${_formatDimensions()}");
    print("Circle color: $color");
    print("Circle area: ${area()}");
    print("Circle perimeter: ${perimeter()}");
    print("Circle is displayable: ${isDisplayable()}");
    print("Circle is a shape: ${BaseShape.isAShape()}");
  }

  @override
  double area() {
    return pi * pow(_radius!, 2);
  }

  @override
  double perimeter() {
    return 2 * pi * _radius!;
  }

  String _formatDimensions() {
    var formattedString = dimensions
        .map((dim) => dim.entries.map((e) => "${e.key}: ${e.value}").join(", "))
        .join(" | ");
    return formattedString;
  }
}
