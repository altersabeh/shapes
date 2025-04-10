alias Shapes.Base.Commons.Displayable

defmodule Displayable do
  @spec should_display(struct()) :: boolean()
  def should_display(_shape) do
    true
  end

  @spec display(struct()) :: :ok
  def display(shape) do
    if should_display(shape) do
      IO.puts("Yes, this shape can be displayed.")
    else
      IO.puts("No, this shape cannot be displayed.")
    end
  end
end
