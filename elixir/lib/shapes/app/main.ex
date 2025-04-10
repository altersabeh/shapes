alias Shapes.Base.Models.Circle

defmodule Shapes.App do
  def main(_args) do
    circle = Circle.new(10)
    IO.puts("Circle Area: #{Circle.area(circle)}")
    IO.puts("Circle Perimeter: #{Circle.perimeter(circle)}")
  end
end
