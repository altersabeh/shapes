import "package:test/test.dart";

import "fixtures/fixtures.dart" as fixtures;

const double delta = 0.001;

void main() {
  group("Circle Tests", () {
    test("Test Circle Area", () {
      var circle = fixtures.setupCircle();
      var result = circle.area();
      const expected = 754.767;
      expect((result - expected).abs() < delta, true);
    }, tags: ["area"]);

    test("Test Circle Circumference", () {
      var circle = fixtures.setupCircle();
      var result = circle.perimeter();
      const expected = 97.389;
      expect((result - expected).abs() < delta, true);
    }, tags: ["perimeter"]);
  }, tags: ["circle"]);

  group("Rectangle Tests", () {
    test("Test Rectangle Area", () {
      var rectangle = fixtures.setupRectangle();
      var result = rectangle.area();
      const expected = 756.437;
      expect((result - expected).abs() < delta, true);
    }, tags: ["area"]);

    test("Test Rectangle Perimeter", () {
      var rectangle = fixtures.setupRectangle();
      var result = rectangle.perimeter();
      const expected = 112.0;
      expect((result - expected).abs() < delta, true);
    }, tags: ["perimeter"]);
  }, tags: ["rectangle"]);

  group("Square Tests", () {
    test("Square Area", () {
      var square = fixtures.setupSquare();
      var result = square.area();
      const expected = 105.062;
      expect((result - expected).abs() < delta, true);
    }, tags: ["area"]);

    test("Square Perimeter", () {
      var square = fixtures.setupSquare();
      var result = square.perimeter();
      const expected = 41.0;
      expect((result - expected).abs() < delta, true);
    }, tags: ["perimeter"]);
  }, tags: ["square"]);
}
