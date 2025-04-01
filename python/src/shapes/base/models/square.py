from typing import final

from shapes.base.commons import Dimensional


@final
class Square(Dimensional):
    def __init__(self, side: float):
        self.side = side if side > 0 else 1

    def area(self) -> float:
        return pow(self.side, 2)

    def perimeter(self) -> float:
        return 4 * self.side
