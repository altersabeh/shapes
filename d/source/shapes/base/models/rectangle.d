module shapes.base.models.rectangle;

import shapes.base.commons;

class Rectangle : Dimensional {
private:
    double width;
    double height;

public:
    this(double width, double height) {
        immutable double dimOne = width > 0 ? width : 1;
        immutable double dimTwo = height > 0 ? height : 1;
        this.width = dimOne;
        this.height = dimTwo;
    }

    double area() const {
        return width * height;
    }

    double perimeter() const {
        return 2 * (width + height);
    }
}
