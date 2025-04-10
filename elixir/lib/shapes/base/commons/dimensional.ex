defprotocol Shapes.Base.Commons.Dimensional do
  @moduledoc """
  Protocol for measurable shapes.
  """

  @doc """
  Calculates the area of the shape.
  """
  def area(shape)

  @doc """
  Calculates the perimeter of the shape.
  """
  def perimeter(shape)
end
