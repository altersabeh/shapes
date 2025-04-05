package shapes.fixtures

import shapes.base.models.{Circle, Rectangle, Square}

def setupCircle(): Circle = {
    val radius = 15.5
    new Circle(radius)
}

def setupRectangle(): Rectangle = {
    val width = 22.75
    val height = 33.25
    new Rectangle(width, height)
}

def setupSquare(): Square = {
    val side = 10.25
    new Square(side)
}
