use crate::base::commons::Dimensional;

pub struct Square {
    pub side: f64,
}

impl Square {
    pub fn new(side: f64) -> Self {
        let dim1: f64 = if side < 0.0 { 1.0 } else { side };
        Self { side: dim1 }
    }
}

impl Dimensional for Square {
    fn area(&self) -> f64 {
        self.side.powi(2)
    }

    fn perimeter(&self) -> f64 {
        self.side * 4.0
    }
}
