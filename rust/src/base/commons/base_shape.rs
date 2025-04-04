use std::collections::HashMap;

pub trait BaseShape {
    fn get_dimensions(&self) -> &Vec<HashMap<&'static str, f64>>;

    fn show_available_dimension_count(&self) -> usize {
        self.get_dimensions().len()
    }

    fn validate_shape() -> bool {
        true
    }

    fn print_description(&self);
}
