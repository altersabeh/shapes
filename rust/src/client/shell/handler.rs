use super::input_reader::read_number;
use crate::base::commons::Dimensional;
use crate::base::models::{Circle, Rectangle, Square};

pub fn handle_circle() {
    println!("What is the radius of the circle?");
    let radius = read_number();
    let circle = Circle::new(radius);
    println!("Area: {:.3}", circle.area());
    println!("Circumference: {:.3}", circle.perimeter());
}

pub fn handle_rectangle() {
    println!("What is the width of the rectangle?");
    let width = read_number();
    println!("What is the height of the rectangle?");
    let height = read_number();
    let rectangle = Rectangle::new(width, height);
    println!("Area: {:.3}", rectangle.area());
    println!("Perimeter: {:.3}", rectangle.perimeter());
}

pub fn handle_square() {
    println!("What is the side length of the square?");
    let side = read_number();
    let square = Square::new(side);
    println!("Area: {:.3}", square.area());
    println!("Perimeter: {:.3}", square.perimeter());
}
