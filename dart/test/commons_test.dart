import "package:shapes/src/base/commons/dimensional.dart";
import "package:test/test.dart";

import "fixtures/fixtures.dart" as fixtures;

void main() {
  group("Measurable Tests", () {
    test("Test Circle Implements Measurable", () {
      var circle = fixtures.setupCircle();
      _assertMeasurable(circle, 754.767, 97.389);
    });

    test("Test Rectangle Implements Measurable", () {
      var rectangle = fixtures.setupRectangle();
      _assertMeasurable(rectangle, 756.437, 112.0);
    });

    test("Test Square Implements Measurable", () {
      var square = fixtures.setupSquare();
      _assertMeasurable(square, 105.062, 41.0);
    });
  });
}

void _assertMeasurable(Dimensional shape, double area, double perimeter) {
  var areaDiff = (shape.area() - area).abs();
  var perimeterDiff = (shape.perimeter() - perimeter).abs();

  expect(areaDiff < 0.001, true, reason: "AREA NOT EQUAL");
  expect(perimeterDiff < 0.001, true, reason: "PERIMETER NOT EQUAL!");
}
