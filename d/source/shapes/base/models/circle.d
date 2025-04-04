module shapes.base.models.circle;

import std.algorithm;
import std.conv;
import std.stdio;
import std.math;

import shapes.base.commons;

class Circle : BaseShape, Dimensional, Displayable {
private:
    double radius;

    string _color;

    string formatDimensions() const {
        auto formattedString = dimensions.map!(
            dim => dim.byKeyValue.map!(
                kv => kv.key ~ ": " ~ kv.value.to!string).joiner(" | "))
            .joiner(" | ").text;

        return formattedString;
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
        writeln("Circle radius: ", radius);
        writeln("Circle dimensions: ", formatDimensions());
        writeln("Circle color: ", color);
        writeln("Circle area: ", area());
        writeln("Circle perimeter: ", perimeter());
        writeln("Circle is displayable: ", shouldDisplay());
        writeln("Circle is a shape: ", validateShape());
    }

    double area() const {
        return PI * pow(radius, 2);
    }

    // Calculate the perimeter of the circle
    double perimeter() const {
        return 2 * PI * radius;
    }
}
