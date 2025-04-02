using Shapes.Base.Commons;

namespace Shapes.Base.Models;

public sealed class Rectangle : IDimensional {
    private readonly double _width;
    private readonly double _height;

    public Rectangle(double width, double height) {
        double dim1 = width > 0 ? width : 1;
        double dim2 = height > 0 ? height : 1;
        _width = dim1;
        _height = dim2;
    }

    public double Area() {
        return _width * _height;
    }

    public double Perimeter() {
        return 2 * (_width + _height);
    }
}
