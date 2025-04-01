from typing import Protocol


class Dimensional(Protocol):
    """
    # `class Dimensional(Protocol)`

    Defines the interface for measurable shapes.
    """

    def area(self) -> float:
        """
        Calculates the area of the shape.
        """
        return 0.0

    def perimeter(self) -> float:
        """
        Calculates the perimeter of the shape.
        """
        return 0.0
