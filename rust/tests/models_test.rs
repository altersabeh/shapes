mod fixtures {
    pub mod helper;
}

use fixtures::helper;
use shapes::base::commons::Dimensional;

const DELTA: f64 = 0.001;

mod circle_tests {

    use super::*;

    #[test]
    fn test_circle_area() {
        let circle = helper::setup_circle();
        let result = circle.area();
        let expected = 754.767;
        assert!((result - expected).abs() < DELTA);
    }

    #[test]
    fn test_circle_circumference() {
        let circle = helper::setup_circle();
        let result = circle.perimeter();
        let expected = 97.389;
        assert!((result - expected).abs() < DELTA);
    }
}

mod rectangle_tests {
    use super::*;

    #[test]
    fn test_rectangle_area() {
        let rectangle = helper::setup_rectangle();
        let result = rectangle.area();
        let expected = 756.437;
        assert!((result - expected).abs() < DELTA);
    }

    #[test]
    fn test_rectangle_perimeter() {
        let rectangle = helper::setup_rectangle();
        let result = rectangle.perimeter();
        let expected = 112.0;
        assert!((result - expected).abs() < DELTA);
    }
}

mod square_tests {
    use super::*;

    #[test]
    fn test_square_area() {
        let square = helper::setup_square();
        let result = square.area();
        let expected = 105.062;
        assert!((result - expected).abs() < DELTA);
    }

    #[test]
    fn test_square_perimeter() {
        let square = helper::setup_square();
        let result = square.perimeter();
        let expected = 41.0;
        assert!((result - expected).abs() < DELTA);
    }
}
