use crate::base::commons::Dimensional;

pub struct Rectangle {
    pub width: f64,
    pub height: f64,
}

impl Rectangle {
    pub fn new(width: f64, height: f64) -> Self {
        let dim1: f64 = if width < 0.0 { 1.0 } else { width };
        let dim2: f64 = if height < 0.0 { 1.0 } else { height };
        Self {
            width: dim1,
            height: dim2,
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
