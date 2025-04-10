alias Shapes.Base.Commons.Dimensional
alias Shapes.Base.Models.Circle

defmodule Circle do
  defstruct radius: 0.0

  def new(radius) do
    dim1 = if(radius > 0, do: radius, else: 1.0)
    %__MODULE__{radius: dim1}
  end

  def area(self) do
    Dimensional.area(self)
  end

  def perimeter(self) do
    Dimensional.perimeter(self)
  end
end

defimpl Dimensional, for: Circle do
  def area(%Circle{radius: radius}) do
    :math.pi() * :math.pow(radius, 2)
  end

  def perimeter(%Circle{radius: radius}) do
    2 * :math.pi() * radius
  end
end
