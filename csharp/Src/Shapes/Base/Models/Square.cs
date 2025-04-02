using Shapes.Base.Commons;

namespace Shapes.Base.Models;

public sealed class Square : IDimensional {
    private readonly double _side;

    public Square(double side) {
        double dim1 = side > 0 ? side : 1;
        _side = dim1;
    }

    public double Area() {
        return Math.Pow(_side, 2);
    }

    public double Perimeter() {
        return 4 * _side;
    }
}
