using Shapes.Base.Commons;

namespace Shapes.Base.Models;

public sealed class Rectangle : IDimensional {
    private readonly double _width;
    private readonly double _height;

    public Rectangle(double width, double height) {
        double dimOne = width > 0 ? width : 1;
        double dimTwo = height > 0 ? height : 1;
        _width = dimOne;
        _height = dimTwo;
    }

    public double Area() {
        return _width * _height;
    }

    public double Perimeter() {
        return 2 * (_width + _height);
    }
}
