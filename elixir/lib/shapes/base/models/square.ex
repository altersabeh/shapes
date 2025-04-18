alias Shapes.Base.Commons.Dimensional
alias Shapes.Base.Models.Square

defmodule Square do
  defstruct side: 0

  def new(side) do
    dim_one = if(side > 0, do: side, else: 1.0)
    %__MODULE__{side: dim_one}
  end

  def area(self) do
    Dimensional.area(self)
  end

  def perimeter(self) do
    Dimensional.perimeter(self)
  end
end

defimpl Dimensional, for: Square do
  def area(%Square{side: side}) do
    :math.pow(side, 2)
  end

  def perimeter(%Square{side: side}) do
    4 * side
  end
end
