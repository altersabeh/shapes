package shapes.base.models;

import shapes.base.commons.Dimensional;

public final class Rectangle implements Dimensional {
    private double width;
    private double height;

    public Rectangle(double width, double height) {
        double dim1 = (width > 0) ? width : 1;
        double dim2 = (height > 0) ? height : 1;
        this.width = dim1;
        this.height = dim2;
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
