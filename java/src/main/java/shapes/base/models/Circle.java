package shapes.base.models;

import java.util.List;
import java.util.Map;
import java.util.stream.Collectors;

import shapes.base.commons.BaseShape;
import shapes.base.commons.Dimensional;
import shapes.base.commons.Displayable;

public class Circle extends BaseShape implements Dimensional, Displayable {
    private final double radius;
    private String color;

    public Circle(double radius) {
        double dim1 = (radius > 0) ? radius : 1;

        super(
            List.of(
                Map.of("radius", Math.max(radius, 1)),
                Map.of("diameter", Math.max(radius, 1) * 2),
                Map.of("curvature", 1 / Math.max(radius, 1))
            )
        );

        this.radius = dim1;
        this.color = "None";
    }

    public String getColor() {
        return color;
    }

    public void setColor(String color) {
        this.color = color;
    }

    @Override
    public void printDescription() {
        System.out.println("Circle radius: " + radius);
        System.out.println("Circle dimensions: " + formatDimensions());
        System.out.println("Circle color: " + color);
        System.out.println("Circle area: " + area());
        System.out.println("Circle perimeter: " + perimeter());
        System.out.println("Circle is displayable: " + shouldDisplay());
        System.out.println("Circle is a shape: " + Circle.validateShape());
    }

    @Override
    public double area() {
        return Math.PI * Math.pow(radius, 2);
    }

    @Override
    public double perimeter() {
        return 2 * Math.PI * radius;
    }

    private String formatDimensions() {
        List<String> parts = getDimensions()
            .stream()
            .map(
                dim -> dim
                    .entrySet()
                    .stream()
                    .map(e -> e.getKey() + ": " + String.format("%.3f", e.getValue()))
                    .collect(Collectors.joining(", "))
            )
            .collect(Collectors.toList());

        return String.join(" | ", parts);
    }
}
