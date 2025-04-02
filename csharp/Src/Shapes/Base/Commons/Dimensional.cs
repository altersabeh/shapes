namespace Shapes.Base.Commons;

/// <summary>
/// Interface for objects that can be measured.
/// </summary>
public interface IDimensional {
    /// <summary>
    /// Calculates the area of the object.
    /// </summary>
    double Area();

    /// <summary>
    /// Calculates the perimeter of the object.
    /// </summary>
    double Perimeter();
}
