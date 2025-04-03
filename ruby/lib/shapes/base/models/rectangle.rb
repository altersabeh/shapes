class Rectangle
    include Dimensional

    attr_accessor :width, :height

    def initialize(length, width)
        dim1 = width >= 0 ? width : 0
        dim2 = height >= 0 ? height : 0
        @width = dim1
        @height = dim2
    end

    def area
        @width * @height
    end

    def perimeter
        2 * (@width + @height)
    end
end
