alias Shapes.Base.Models.{Circle, Rectangle, Square}

defmodule Fixtures.Helper do
  def setup_circle do
    radius = 15.5
    %Circle{radius: radius}
  end

  def setup_rectangle do
    width = 22.75
    height = 33.25
    %Rectangle{width: width, height: height}
  end

  def setup_square do
    side = 10.25
    %Square{side: side}
  end
end
