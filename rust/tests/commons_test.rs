mod fixtures {
    pub mod helper;
}

use fixtures::helper;

mod dimensional_test {
    use shapes::base::commons::Dimensional;

    use super::*;

    #[test]
    fn test_circle_implements_dimensional() {
        let circle = helper::setup_circle();
        assert_dimensional(circle, 754.767, 97.389);
    }

    #[test]
    fn test_rectangle_implements_dimensional() {
        let rectangle = helper::setup_rectangle();
        assert_dimensional(rectangle, 756.437, 112.0);
    }

    #[test]
    fn test_square_implements_dimensional() {
        let square = helper::setup_square();
        assert_dimensional(square, 105.062, 41.0);
    }

    fn assert_dimensional(
        dimensional_shape: impl Dimensional,
        expected_area: f64,
        expected_perimeter: f64,
    ) {
        let area_diff = (dimensional_shape.area() - expected_area).abs();
        let perimeter_diff = (dimensional_shape.perimeter() - expected_perimeter).abs();

        assert!(area_diff < 0.001, "AREA NOT EQUAL");
        assert!(perimeter_diff < 0.001, "PERIMETER NOT EQUAL!");
    }
}
