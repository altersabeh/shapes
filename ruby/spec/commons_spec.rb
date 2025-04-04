# frozen_string_literal: true

require_relative "fixtures/helper"

require "shapes/base/commons"

RSpec.describe "Dimensional Tests" do
    it "ensures Circle implements Dimensional" do
        circle = Helper.setup_circle
        assert_dimensional(circle, 754.767, 97.389)
    end

    it "ensures Rectangle implements Dimensional" do
        rectangle = Helper.setup_rectangle
        assert_dimensional(rectangle, 756.437, 112.0)
    end

    it "ensures Square implements Dimensional" do
        square = Helper.setup_square
        assert_dimensional(square, 105.062, 41.0)
    end

    def assert_dimensional(
        dimensional_shape,
        expected_area,
        expected_perimeter,
    )
        area_diff = (dimensional_shape.area - expected_area).abs
        perimeter_diff = (dimensional_shape.perimeter - expected_perimeter).abs

        expect(area_diff).to be < 0.001, "AREA NOT EQUAL"
        expect(perimeter_diff).to be < 0.001, "PERIMETER NOT EQUAL!"
    end
end
