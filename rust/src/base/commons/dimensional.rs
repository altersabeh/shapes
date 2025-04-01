/// # `trait Dimensional`
///
/// Defines the interface for measurable shapes.
pub trait Dimensional {
    /// Calculates the area of the shape.
    fn area(&self) -> f64;

    /// Calculates the perimeter of the shape.
    fn perimeter(&self) -> f64;
}
