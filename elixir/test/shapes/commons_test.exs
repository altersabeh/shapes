alias Fixtures.Helper
alias Shapes.Base.Commons.Dimensional

defmodule TestDimensional do
  use ExUnit.Case, async: true

  describe "Dimensional" do
    test "circle implements dimensional" do
      circle = Helper.setup_circle()
      assert_dimensional(circle, 754.767, 97.389)
    end

    test "rectangle implements dimensional" do
      rectangle = Helper.setup_rectangle()
      assert_dimensional(rectangle, 756.437, 112.0)
    end

    test "square implements dimensional" do
      square = Helper.setup_square()
      assert_dimensional(square, 105.062, 41.0)
    end
  end

  defp assert_dimensional(
         dimensional_shape,
         expected_area,
         expected_perimeter
       ) do
    area_diff = abs(Dimensional.area(dimensional_shape) - expected_area)
    perimeter_diff = abs(Dimensional.perimeter(dimensional_shape) - expected_perimeter)

    assert area_diff < 0.001, "AREA NOT EQUAL!"
    assert perimeter_diff < 0.001, "PERIMETER NOT EQUAL!"
  end
end
