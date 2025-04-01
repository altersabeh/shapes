import "package:shapes/base/commons.dart";
import "package:test/test.dart";

import "fixtures/fixtures.dart" as fixtures;

void main() {
  group("Dimensional Tests", () {
    test("Test Circle Implements Dimensional", () {
      var circle = fixtures.setupCircle();
      _assertDimensional(circle, 754.767, 97.389);
    });

    test("Test Rectangle Implements Dimensional", () {
      var rectangle = fixtures.setupRectangle();
      _assertDimensional(rectangle, 756.437, 112.0);
    });

    test("Test Square Implements Dimensional", () {
      var square = fixtures.setupSquare();
      _assertDimensional(square, 105.062, 41.0);
    });
  });
}

void _assertDimensional(
  Dimensional dimensionalShape,
  double expectedArea,
  double expectedPerimeter,
) {
  var areaDiff = (dimensionalShape.area() - expectedArea).abs();
  var perimeterDiff = (dimensionalShape.perimeter() - expectedPerimeter).abs();

  expect(areaDiff < 0.001, true, reason: "AREA NOT EQUAL");
  expect(perimeterDiff < 0.001, true, reason: "PERIMETER NOT EQUAL!");
}
