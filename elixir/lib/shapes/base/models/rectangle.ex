alias Shapes.Base.Commons.Dimensional
alias Shapes.Base.Models.Rectangle

defmodule Rectangle do
  defstruct width: 0.0, height: 0.0

  def new(width, height) do
    dim1 = if(width > 0, do: width, else: 1.0)
    dim2 = if(height > 0, do: height, else: 1.0)
    %__MODULE__{width: dim1, height: dim2}
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
