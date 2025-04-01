use std::{collections::HashMap as HM, f64::consts::PI};

use crate::base::commons::{BaseShape, Dimensional, Displayable};

pub struct Circle {
    pub radius: f64,
    pub dimensions: Vec<HM<String, f64>>,
    pub color: String,
}

impl Circle {
    pub fn new(radius: f64) -> Self {
        let dim1: f64 = if radius < 0.0 { 1.0 } else { radius };

        Self {
            radius: dim1,
            dimensions: vec![
                HM::from([("radius".to_string(), radius.max(1.0))]),
                HM::from([("diameter".to_string(), radius.max(1.0) * 2.0)]),
            ],
            color: "None".to_string(),
        }
    }

    fn format_dimensions(&self) -> String {
        let formatted_string = self
            .dimensions
            .iter()
            .flat_map(|dim| dim.iter().map(|(key, value)| format!("{}: {}", key, value)))
            .collect::<Vec<_>>()
            .join(" | ");
        formatted_string
    }
}

impl BaseShape for Circle {
    fn get_dimensions(&self) -> &Vec<HM<String, f64>> {
        &self.dimensions
    }

    fn print_description(&self) {
        println!("Circle radius: {}", self.radius);
        println!("Circle dimensions: {}", self.format_dimensions());
        println!("Circle color: {}", self.color);
        println!("Circle area: {}", self.area());
        println!("Circle perimeter: {}", self.perimeter());
        println!("Circle is displayable: {}", self.is_displayable());
        println!("Circle is a shape: {}", Circle::is_a_shape());
    }
}

impl Dimensional for Circle {
    fn area(&self) -> f64 {
        PI * self.radius.powi(2)
    }

    fn perimeter(&self) -> f64 {
        2.0 * PI * self.radius
    }
}

impl Displayable for Circle {}
