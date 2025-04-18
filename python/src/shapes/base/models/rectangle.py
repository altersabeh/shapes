from typing import final

from shapes.base.commons import Dimensional


@final
class Rectangle(Dimensional):
    def __init__(self, width: float, height: float):
        dim_one: float = width if width > 0 else 1
        dim_two: float = height if height > 0 else 1
        self.width = dim_one
        self.height = dim_two

    def area(self) -> float:
        return self.width * self.height

    def perimeter(self) -> float:
        return 2 * (self.width + self.height)
