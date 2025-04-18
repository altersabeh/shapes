# frozen_string_literal: true

require "minitest/autorun"
require "minitest/reporters"
require "shapes/base/commons"

require_relative "fixtures/helper"

Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new(color: true)

class TestDimensional < Minitest::Test
    def test_circle_implements_dimensional
        circle = Helper.setup_circle
        assert_dimensional(circle, 754.767, 97.389)
    end

    def test_rectangle_implements_dimensional
        rectangle = Helper.setup_rectangle
        assert_dimensional(rectangle, 756.437, 112.0)
    end

    def test_square_implements_dimensional
        square = Helper.setup_square
        assert_dimensional(square, 105.062, 41.0)
    end

    private

    def assert_dimensional(
        dimensional_shape,
        expected_area,
        expected_perimeter
    )
        area_diff = (dimensional_shape.area - expected_area).abs
        perimeter_diff = (dimensional_shape.perimeter - expected_perimeter).abs

        assert(area_diff < 0.001, "AREA NOT EQUAL")
        assert(perimeter_diff < 0.001, "PERIMETER NOT EQUAL!")
    end
end
