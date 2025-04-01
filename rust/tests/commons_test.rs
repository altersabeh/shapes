mod fixtures;

mod measurable_test {
    use shapes::base::commons::Dimensional;

    use super::*;

    #[test]
    fn test_circle_implements_measurable() {
        let circle = fixtures::setup_circle();
        assert_measurable(circle, 754.767, 97.389);
    }

    #[test]
    fn test_rectangle_implements_measurable() {
        let rectangle = fixtures::setup_rectangle();
        assert_measurable(rectangle, 756.437, 112.0);
    }

    #[test]
    fn test_square_implements_measurable() {
        let square = fixtures::setup_square();
        assert_measurable(square, 105.062, 41.0);
    }

    fn assert_measurable(
        geometric_shape: impl Dimensional,
        expected_area: f64,
        expected_perimeter: f64,
    ) {
        let area_diff = (geometric_shape.area() - expected_area).abs();
        let perimeter_diff = (geometric_shape.perimeter() - expected_perimeter).abs();

        assert!(area_diff < 0.001, "AREA NOT EQUAL");
        assert!(perimeter_diff < 0.001, "PERIMETER NOT EQUAL!");
    }
}
