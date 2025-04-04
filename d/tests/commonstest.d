module tests.commonstest;

import shapes.base.commons;
import std.math.algebraic;

import helper = tests.fixtures.helper;

private void assert_dimensional(
    Dimensional geometricShape,
    double expectedArea,
    double expectedPerimeter
) {
    const double areaDiff = abs(geometricShape.area() - expectedArea);
    const double perimeterDiff = abs(geometricShape.perimeter() - expectedPerimeter);

    assert(areaDiff < 0.001, "AREA IS NOT EQUAL!");
    assert(perimeterDiff < 0.001, "PERIMETER IS NOT EQUAL!");
}

@("Test Circle Implements Dimensional")
unittest {
    auto circle = helper.setupCircle();
    assert_dimensional(circle, 754.767, 97.389);
}

@("Test Rectangle Implements Dimensional")
unittest {
    auto rectangle = helper.setupRectangle();
    assert_dimensional(rectangle, 756.437, 112.0);
}

@("Test Square Implements Dimensional")
unittest {
    auto square = helper.setupSquare();
    assert_dimensional(square, 105.062, 41.0);
}
