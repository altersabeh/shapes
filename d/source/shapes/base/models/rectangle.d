module shapes.base.models.rectangle;

import shapes.base.commons;

class Rectangle : Dimensional {
private:
    double width;
    double height;

public:
    this(double width, double height) {
        immutable double dim1 = width > 0 ? width : 1;
        immutable double dim2 = height > 0 ? height : 1;
        this.width = dim1;
        this.height = dim2;
    }

    double area() const {
        return width * height;
    }

    double perimeter() const {
        return 2 * (width + height);
    }
}
