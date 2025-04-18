alias Shapes.Base.Commons.Dimensional
alias Shapes.Base.Models.Rectangle

defmodule Rectangle do
  defstruct width: 0.0, height: 0.0

  def new(width, height) do
    dim_one = if(width > 0, do: width, else: 1.0)
    dim_two = if(height > 0, do: height, else: 1.0)
    %__MODULE__{width: dim_one, height: dim_two}
  end

  def area(self) do
    Dimensional.area(self)
  end

  def perimeter(self) do
    Dimensional.perimeter(self)
  end
end

defimpl Dimensional, for: Rectangle do
  def area(%Rectangle{width: width, height: height}) do
    width * height
  end

  def perimeter(%Rectangle{width: width, height: height}) do
    2 * (width + height)
  end
end
