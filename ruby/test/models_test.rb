# frozen_string_literal: true

require "minitest/autorun"
require "minitest/reporters"

require_relative "fixtures/helper"

Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new(color: true)

DELTA = 0.001

class TestCircle < Minitest::Test
    def test_circle_area
        circle = Helper.setup_circle
        result = circle.area
        expected = 754.767
        assert((expected - result).abs < DELTA)
    end

    def test_circle_perimeter
        circle = Helper.setup_circle
        result = circle.perimeter
        expected = 97.389
        assert((expected - result).abs < DELTA)
    end
end

class TestRectangle < Minitest::Test
    def test_rectangle_area
        rectangle = Helper.setup_rectangle
        result = rectangle.area
        expected = 756.437
        assert((expected - result).abs < DELTA)
    end

    def test_rectangle_perimeter
        rectangle = Helper.setup_rectangle
        result = rectangle.perimeter
        expected = 112.0
        assert((expected - result).abs < DELTA)
    end
end

class TestSquare < Minitest::Test
    def test_square_area
        square = Helper.setup_square
        result = square.area
        expected = 105.062
        assert((expected - result).abs < DELTA)
    end

    def test_square_perimeter
        square = Helper.setup_square
        result = square.perimeter
        expected = 41.0
        assert((expected - result).abs < DELTA)
    end
end
