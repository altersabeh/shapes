using Shapes.Base.Commons;

namespace Shapes.Base.Models;

public sealed class Square : IDimensional {
    private readonly double _side;

    public Square(double side) {
        double dimOne = side > 0 ? side : 1;
        _side = dimOne;
    }

    public double Area() {
        return Math.Pow(_side, 2);
    }

    public double Perimeter() {
        return 4 * _side;
    }
}
