class Square
    include Dimensional

    attr_accessor :side

    def initialize(side)
        dim1 = side > 0 ? side : 0
        @side = dim1
    end

    def area
        @side.pow(2)
    end

    def perimeter
        @side * 4
    end
end
