package shapes.base.models;

import shapes.base.commons.Dimensional;

public final class Square implements Dimensional {
    private double side;

    public Square(double side) {
        double dim1 = (side > 0) ? side : 1;
        this.side = dim1;
    }

    @Override
    public double area() {
        return Math.pow(this.side, 2);
    }

    @Override
    public double perimeter() {
        return 4 * side;
    }
}
