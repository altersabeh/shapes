from shapes.base.models import Circle, Rectangle, Square

from .input_reader import read_number


def handle_circle():
    print("What is the radius of the circle?")
    radius = read_number()
    circle = Circle(radius)
    print(f"Area: {circle.area():.3f}")
    print(f"Circumference: {circle.perimeter():.3f}")


def handle_rectangle():
    print("What is the width of the rectangle?")
    width = read_number()
    print("What is the height of the rectangle?")
    length = read_number()
    rectangle = Rectangle(width, length)
    print(f"Area: {rectangle.area():.3f}")
    print(f"Perimeter: {rectangle.perimeter():.3f}")


def handle_square():
    print("What is the side length of the square?")
    side = read_number()
    square = Square(side)
    print(f"Area: {square.area():.3f}")
    print(f"Perimeter: {square.perimeter():.3f}")
