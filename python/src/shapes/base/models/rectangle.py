from typing import final

from shapes.base.commons import Dimensional


@final
class Rectangle(Dimensional):
    def __init__(self, width: float, height: float):
        dim1: float = width if width > 0 else 1
        dim2: float = height if height > 0 else 1
        self.width = dim1
        self.height = dim2

    def area(self) -> float:
        return self.width * self.height

    def perimeter(self) -> float:
        return 2 * (self.width + self.height)
