import math
from typing import final

from shapes.base.commons import BaseShape, Dimensional, Displayable


@final
class Circle(BaseShape, Dimensional, Displayable):
    def __init__(self, radius: float):
        dim1: float = radius if radius > 0 else 1

        super().__init__(
            [
                {"radius": max(radius, 1)},
                {"diameter": max(radius, 1) * 2},
            ]
        )

        self.radius = dim1
        self._color = "None"

    @property
    def color(self) -> str:
        return self._color

    @color.setter
    def color(self, value: str) -> None:
        self._color = value

    def print_description(self) -> None:
        print(f"Circle radius: {self.radius}")
        print(f"Circle dimensions: {self._format_dimensions()}")
        print(f"Circle color: {self.color}")
        print(f"Circle area: {self.area()}")
        print(f"Circle perimeter: {self.perimeter()}")
        print(f"Circle is displayable: {self.is_displayable()}")
        print(f"Circle is a shape: {Circle.is_a_shape()}")

    def area(self) -> float:
        return math.pi * self.radius**2

    def perimeter(self) -> float:
        return 2 * math.pi * self.radius

    def _format_dimensions(self) -> str:
        formatted_string = " | ".join(
            [
                f"{key}: {value}"
                for dim in self.dimensions
                for key, value in dim.items()
            ]
        )
        return formatted_string
