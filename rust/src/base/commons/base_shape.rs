use std::collections::HashMap;

pub trait BaseShape {
    fn get_dimensions(&self) -> &Vec<HashMap<String, f64>>;

    fn print_description(&self);

    fn get_dimension_available(&self) -> usize {
        self.get_dimensions().len()
    }

    fn is_a_shape() -> bool {
        true
    }
}
