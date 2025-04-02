module shapes.base.models.square;

import shapes.base.commons;
import std.math;

class Square : Dimensional {
private:
    double side;

public:
    this(double side) {
        immutable double dim1 = side > 0 ? side : 1;
        this.side = dim1;
    }

    double area() const {
        return pow(side, 2);
    }

    double perimeter() const {
        return 4 * side;
    }
}
