use shapes::base::models::{Circle, Rectangle, Square};

pub fn setup_circle() -> Circle {
    let radius = 15.5;
    Circle::new(radius)
}

pub fn setup_rectangle() -> Rectangle {
    let width = 22.75;
    let height = 33.25;
    Rectangle::new(width, height)
}

pub fn setup_square() -> Square {
    let side = 10.25;
    Square::new(side)
}
