# frozen_string_literal: true

require "shapes/base/commons"

class Circle < BaseShape
    include Dimensional
    include Displayable

    attr_accessor :color
    attr_reader :radius

    def initialize(radius)
        dim1 = radius >= 0 ? radius : 1

        super([
            { radius: [radius, 1].max },
            { diameter: [radius, 1].max * 2 },
            { curvature: 1.0 / [radius, 1].max }
        ])

        @radius = dim1
        @color = "None"
    end

    def print_description
        puts "Circle radius: #{@radius}"
        puts "Circle dimensions: #{format_dimensions}"
        puts "Circle color: #{@color}"
        puts "Circle area: #{area}"
        puts "Circle perimeter: #{perimeter}"
        puts "Circle is displayable: #{should_display}"
        puts "Circle is a shape: #{self.class.validate_shape}"
    end

    def area
        Math::PI * @radius**2
    end

    def perimeter
        2 * Math::PI * @radius
    end

    private

    def format_dimensions
        parts = @dimensions.map do |dimension|
            dimension.map do |key, value|
                "#{key}: #{format("%.3f", value)}"
            end
        end.flatten

        parts.join(" | ")
    end
end
