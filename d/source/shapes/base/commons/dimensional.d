module shapes.base.commons.dimensional;

/// The Dimensional interface defines the contract
/// for shapes that have a defined area and perimeter.
interface Dimensional {
    /// Calculates the area of the shape.
    double area() const;

    /// Calculates the perimeter of the shape.
    double perimeter() const;
}
