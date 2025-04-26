use std::collections::HashMap;
use std::f64::consts::PI;

use crate::base::commons::{BaseShape, Dimensional, Displayable};

pub struct Circle {
    pub radius: f64,
    dimensions: Vec<HashMap<&'static str, f64>>,
    color: &'static str,
}

impl Circle {
    pub fn new(radius: f64) -> Self {
        let dim_one: f64 = if radius < 0.0 { 1.0 } else { radius };

        Self {
            radius: dim_one,
            dimensions: vec![
                HashMap::from([("radius", radius.max(1.0))]),
                HashMap::from([("diameter", radius.max(1.0) * 2.0)]),
                HashMap::from([("curvature", 1.0 / radius.max(1.0))]),
            ],
            color: "None",
        }
    }

    pub fn get_color(&self) -> &str {
        self.color
    }

    pub fn set_color(&mut self, color: &'static str) {
        self.color = color;
    }

    fn format_dimensions(&self) -> String {
        let parts: Vec<String> = self
            .dimensions
            .iter()
            .flat_map(|dimension| {
                dimension
                    .iter()
                    .map(|(key, value)| format!("{}: {:.3}", key.to_uppercase(), value))
            })
            .collect::<Vec<_>>();

        parts.join(" | ")
    }
}

impl BaseShape for Circle {
    fn get_dimensions(&self) -> &Vec<HashMap<&'static str, f64>> {
        &self.dimensions
    }

    fn print_description(&self) {
        println!("Circle radius: {}", self.radius);
        println!("Circle dimensions: {}", self.format_dimensions());
        println!("Circle color: {}", self.get_color());
        println!("Circle area: {}", self.area());
        println!("Circle perimeter: {}", self.perimeter());
        println!("Circle is displayable: {}", self.should_display());
        println!("Circle is a shape: {}", Circle::validate_shape());
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
