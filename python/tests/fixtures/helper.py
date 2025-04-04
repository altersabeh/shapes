from shapes.base.models import Circle, Rectangle, Square


def setup_circle() -> Circle:
    radius = 15.5
    return Circle(radius)


def setup_rectangle() -> Rectangle:
    width = 22.75
    height = 33.25
    return Rectangle(width, height)


def setup_square() -> Square:
    side = 10.25
    return Square(side)
