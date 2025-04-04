# frozen_string_literal: true

module Handler
    def self.handle_circle
        puts "What is the radius of the circle?"
        radius = read_number
        circle = Circle.new(radius)
        puts "Area: #{format("%.3f", circle.area)}"
        puts "Circumference: #{format("%.3f", circle.perimeter)}"
    end

    def self.handle_rectangle
        puts "What is the width of the rectangle?"
        width = read_number
        puts "What is the height of the rectangle?"
        length = read_number
        rectangle = Rectangle.new(width, length)
        puts "Area: #{format("%.3f", rectangle.area)}"
        puts "Perimeter: #{format("%.3f", rectangle.perimeter)}"
    end

    def self.handle_square
        puts "What is the side length of the square?"
        side = read_number
        square = Square.new(side)
        puts "Area: #{format("%.3f", square.area)}"
        puts "Perimeter: #{format("%.3f", square.perimeter)}"
    end
end
