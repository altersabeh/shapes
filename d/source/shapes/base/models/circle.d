module shapes.base.models.circle;

import std.algorithm;
import std.array;
import std.conv;
import std.format;
import std.stdio;
import std.math;

import shapes.base.commons;

class Circle : BaseShape, Dimensional, Displayable {
private:
    double radius;

    string _color;

    string formatDimensions() const {
        string[] parts = dimensions
            .map!(dim => dim.byKeyValue.map!(kv =>
                    kv.key ~ ": " ~ format("%.3f", kv.value)
            ).array
        ).joiner.array;

        string formattedDimensions = parts.join(" | ");

        return formattedDimensions;
    }

public:
    this(double radius) {
        immutable double dim1 = radius > 0 ? radius : 0;

        super([
            ["radius" : max(radius, 1)],
            ["diameter" : max(radius, 1) * 2],
            ["curvature" : 1 / max(radius, 1)],
        ]);

        this.radius = dim1;
        this.color = "None";
    }

    @property string color() const {
        return _color;
    }

    @property void color(string color) {
        _color = color;
    }

    override void printDescription() const {
        writeln("Circle radius: ", this.radius);
        writeln("Circle dimensions: ", this.formatDimensions());
        writeln("Circle color: ", this.color);
        writeln("Circle area: ", this.area());
        writeln("Circle perimeter: ", this.perimeter());
        writeln("Circle is displayable: ", this.shouldDisplay());
        writeln("Circle is a shape: ", Circle.validateShape());
    }

    double area() const {
        return PI * pow(radius, 2);
    }

    // Calculate the perimeter of the circle
    double perimeter() const {
        return 2 * PI * radius;
    }
}
