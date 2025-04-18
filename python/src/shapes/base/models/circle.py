import math
from typing import final

from shapes.base.commons import BaseShape, Dimensional, Displayable


@final
class Circle(BaseShape, Dimensional, Displayable):
    def __init__(self, radius: float):
        dim_one: float = radius if radius > 0 else 1

        super().__init__(
            [
                {"radius": max(radius, 1)},
                {"diameter": max(radius, 1) * 2},
                {"curvature": 1 / max(radius, 1)},
            ]
        )

        self.radius = dim_one
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
        print(f"Circle is displayable: {self.should_display()}")
        print(f"Circle is a shape: {Circle.validate_shape()}")

    def area(self) -> float:
        return math.pi * self.radius**2

    def perimeter(self) -> float:
        return 2 * math.pi * self.radius

    def _format_dimensions(self) -> str:
        parts: list[str] = [
            f"{key.upper()}: {value:.3f}"
            for dimension in self.dimensions
            for key, value in dimension.items()
        ]

        return " | ".join(parts)
