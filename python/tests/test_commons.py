import fixtures

from shapes.base.commons import Dimensional


class TestMeasurable:
    def test_circle_implements_measurable(self):
        circle = fixtures.setup_circle()
        assert_measurable(circle, 754.767, 97.389)

    def test_rectangle_implements_measurable(self):
        rectangle = fixtures.setup_rectangle()
        assert_measurable(rectangle, 756.437, 112.0)

    def test_square_implements_measurable(self):
        square = fixtures.setup_square()
        assert_measurable(square, 105.062, 41.0)


def assert_measurable(
    geometric_shape: Dimensional,
    expexted_area: float,
    expected_perimeter: float,
):
    area_diff = abs(geometric_shape.area() - expexted_area)
    perimeter_diff = abs(geometric_shape.perimeter() - expected_perimeter)
    assert area_diff < 0.001, "AREA NOT EQUAL"
    assert perimeter_diff < 0.001, "PERIMETER NOT EQUAL!"
