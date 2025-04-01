from abc import ABC, abstractmethod


class BaseShape(ABC):
    def __init__(self, dimensions: list[dict[str, float]]):
        """
        Initialize the BaseShape with a list of dictionaries representing dimensions.
        Each dictionary should have a single key-value pair, e.g., `[{"width":
        12}, {"length": 15}]`.
        """
        self._dimensions = dimensions

    @property
    def dimensions(self) -> list[dict[str, float]]:
        return self._dimensions

    @abstractmethod
    def print_description(self) -> None: ...

    def get_dimension_available(self) -> int:
        return len(self.dimensions)

    @staticmethod
    def is_a_shape() -> bool:
        return True
