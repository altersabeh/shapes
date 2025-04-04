using Shapes.Base.Commons;

namespace Shapes.Base.Models;

public sealed class Circle : BaseShape, IDimensional, IDisplayable {
    private readonly double _radius;
    private string _color;

    public Circle(double radius)
        : base(
            [
                new() { { "radius", Math.Max(radius, 1) } },
                new() { { "diameter", Math.Max(radius, 1) * 2 } },
                new() { { "curvature", 1 / Math.Max(radius, 1) } },
            ]
        ) {
        double dim1 = radius > 0 ? radius : 1;

        _radius = dim1;
        _color = "None";
    }

    public string Color {
        get {
            return _color;
        }

        set {
            _color = value;
        }
    }

    public override void PrintDescription() {
        Console.WriteLine($"Circle radius: {_radius}");
        Console.WriteLine($"Circle dimensions: {FormatDimensions()}");
        Console.WriteLine($"Circle color: {Color}");
        Console.WriteLine($"Circle area: {Area()}");
        Console.WriteLine($"Circle perimeter: {Perimeter()}");
        Console.WriteLine($"Circle is displayable: {((IDisplayable)this).ShouldDisplay()}");
        Console.WriteLine($"Circle is a shape: {ValidateShape()}");
    }

    public double Area() {
        return Math.PI * Math.Pow(_radius, 2);
    }

    public double Perimeter() {
        return 2 * Math.PI * _radius;
    }

    private string FormatDimensions() {
        IEnumerable<string> parts = Dimensions.Select(dim =>
            string.Join("", dim.Select(kv => $"{kv.Key}: {Math.Round(kv.Value, 3):F3}"))
        );

        return string.Join(" | ", parts);
    }
}
