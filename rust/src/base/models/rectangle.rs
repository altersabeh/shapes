use crate::base::commons::Dimensional;

pub struct Rectangle {
    pub width: f64,
    pub height: f64,
}

impl Rectangle {
    pub fn new(width: f64, height: f64) -> Self {
        let dim_one: f64 = if width < 0.0 { 1.0 } else { width };
        let dim_two: f64 = if height < 0.0 { 1.0 } else { height };
        Self {
            width: dim_one,
            height: dim_two,
        }
    }
}

impl Dimensional for Rectangle {
    fn area(&self) -> f64 {
        self.width * self.height
    }

    fn perimeter(&self) -> f64 {
        2.0 * (self.width + self.height)
    }
}
