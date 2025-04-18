# frozen_string_literal: true

require "shapes/base/commons"

class Rectangle
    include Dimensional

    attr_accessor :width, :height

    def initialize(width, height)
        dim_one = width >= 0 ? width : 0
        dim_two = height >= 0 ? height : 0
        @width = dim_one
        @height = dim_two
    end

    def area
        @width * @height
    end

    def perimeter
        2 * (@width + @height)
    end
end
