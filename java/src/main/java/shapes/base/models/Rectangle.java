package shapes.base.models;

import shapes.base.commons.Dimensional;

public final class Rectangle implements Dimensional {
    private double width;
    private double height;

    public Rectangle(double width, double height) {
        double dimOne = (width > 0) ? width : 1;
        double dimTwo = (height > 0) ? height : 1;
        this.width = dimOne;
        this.height = dimTwo;
    }

    @Override
    public double area() {
        return width * height;
    }

    @Override
    public double perimeter() {
        return 2 * (width + height);
    }
}
