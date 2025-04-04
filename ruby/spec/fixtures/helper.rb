# frozen_string_literal: true

require "shapes/base/models"

module Helper
    def self.setup_circle
        radius = 15.5
        Circle.new(radius)
    end

    def self.setup_rectangle
        width = 22.75
        height = 33.25
        Rectangle.new(width, height)
    end

    def self.setup_square
        side = 10.25
        Square.new(side)
    end
end
