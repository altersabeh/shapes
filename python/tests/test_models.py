import pytest
from fixtures import helper

DELTA = 0.001


@pytest.mark.circle
class TestsCircle:
    @staticmethod
    @pytest.mark.area
    def test_circle_area():
        circle = helper.setup_circle()
        result = circle.area()
        expected = 754.767
        assert abs(result - expected) < DELTA

    @staticmethod
    @pytest.mark.perimeter
    def test_circle_circumference():
        circle = helper.setup_circle()
        result = circle.perimeter()
        expected = 97.389
        assert abs(result - expected) < DELTA


@pytest.mark.rectangle
class TestsRectangle:
    @staticmethod
    @pytest.mark.area
    def test_rectangle_area():
        rectangle = helper.setup_rectangle()
        result = rectangle.area()
        expected = 756.437
        assert abs(result - expected) < DELTA

    @staticmethod
    @pytest.mark.perimeter
    def test_rectangle_perimeter():
        rectangle = helper.setup_rectangle()
        result = rectangle.perimeter()
        expected = 112.0
        assert abs(result - expected) < DELTA


@pytest.mark.square
class TestsSquare:
    @staticmethod
    @pytest.mark.area
    def test_square_area():
        square = helper.setup_square()
        result = square.area()
        expected = 105.062
        assert abs(result - expected) < DELTA

    @staticmethod
    @pytest.mark.perimeter
    def test_square_perimeter():
        square = helper.setup_square()
        result = square.perimeter()
        expected = 41.0
        assert abs(result - expected) < DELTA
