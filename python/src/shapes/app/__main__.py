from shapes.base.models import Circle
from shapes.client.shell import Runner


def main():
    program: Runner = Runner()

    circle: Circle = Circle(15.25)
    circle.color = "RED"
    circle.print_description()

    program.run()


main()
