from shapes.base.commons import Dimensional
from tests.fixtures import helper


class TestDimensional:
    def test_circle_implements_dimensional(self):
        circle = helper.setup_circle()
        assert_dimensional(circle, 754.767, 97.389)

    def test_rectangle_implements_dimensional(self):
        rectangle = helper.setup_rectangle()
        assert_dimensional(rectangle, 756.437, 112.0)

    def test_square_implements_dimensional(self):
        square = helper.setup_square()
        assert_dimensional(square, 105.062, 41.0)


def assert_dimensional(
    dimensional_shape: Dimensional,
    expexted_area: float,
    expected_perimeter: float,
):
    area_diff = abs(dimensional_shape.area() - expexted_area)
    perimeter_diff = abs(dimensional_shape.perimeter() - expected_perimeter)

    assert area_diff < 0.001, "AREA NOT EQUAL"
    assert perimeter_diff < 0.001, "PERIMETER NOT EQUAL!"
