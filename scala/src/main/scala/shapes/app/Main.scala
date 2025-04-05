package shapes.app

import shapes.base.models.Circle
import shapes.client.shell.Runner

@main def main(): Unit =
    var program: Runner = new Runner()

    var circle: Circle = Circle(15.25)
    circle.color = "RED"
    circle.printDescription()

    program.run()
