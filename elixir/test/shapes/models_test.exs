alias Fixtures.Helper
alias Shapes.Base.Models.{Circle, Rectangle, Square}

defmodule TestsCircle do
  use ExUnit.Case, async: true

  @delta 0.001

  describe "Circle" do
    @tag :area
    test "calculates area" do
      circle = Helper.setup_circle()
      result = Circle.area(circle)
      expected = 754.767
      assert abs(result - expected) < @delta
    end

    @tag :perimeter
    test "calculates circumference" do
      circle = Helper.setup_circle()
      result = Circle.perimeter(circle)
      expected = 97.389
      assert abs(result - expected) < @delta
    end
  end
end

defmodule TestsRectangle do
  use ExUnit.Case, async: true

  @delta 0.001

  describe "Rectangle" do
    @tag :area
    test "calculates area" do
      rectangle = Helper.setup_rectangle()
      result = Rectangle.area(rectangle)
      expected = 756.437
      assert abs(result - expected) < @delta
    end

    @tag :perimeter
    test "calculates perimeter" do
      rectangle = Helper.setup_rectangle()
      result = Rectangle.perimeter(rectangle)
      expected = 112.0
      assert abs(result - expected) < @delta
    end
  end
end

defmodule TestsSquare do
  use ExUnit.Case, async: true

  @delta 0.001

  describe "Square" do
    @tag :area
    test "calculates area" do
      square = Helper.setup_square()
      result = Square.area(square)
      expected = 105.062
      assert abs(result - expected) < @delta
    end

    @tag :perimeter
    test "calculates perimeter" do
      square = Helper.setup_square()
      result = Square.perimeter(square)
      expected = 41.0
      assert abs(result - expected) < @delta
    end
  end
end
