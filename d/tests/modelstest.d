module modelstest;

import std.math.algebraic;
import test.fixtures;

enum DELTA = 0.001;

@("Test Circle Area")
unittest {
    auto circle = setupCircle();
    const double result = circle.area();
    const double expected = 754.767;
    assert(abs(result - expected) < DELTA);
}

@("Test Circle Perimeter")
unittest {
    auto circle = setupCircle();
    const double result = circle.perimeter();
    const double expected = 97.389;
    assert(abs(result - expected) < DELTA);
}

@("Test Rectangle Area")
unittest {
    auto rectangle = setupRectangle();
    const double result = rectangle.area();
    const double expected = 756.437;
    assert(abs(result - expected) < DELTA);
}

@("Test Rectangle Perimeter")
unittest {
    auto rectangle = setupRectangle();
    const double result = rectangle.perimeter();
    const double expected = 112.0;
    assert(abs(result - expected) < DELTA);
}

@("Test Square Area")
unittest {
    auto square = setupSquare();
    const double result = square.area();
    const double expected = 105.062;
    assert(abs(result - expected) < DELTA);
}

@("Test Square Perimeter")
unittest {
    auto square = setupSquare();
    const double result = square.perimeter();
    const double expected = 41.0;
    assert(abs(result - expected) < DELTA);
}
