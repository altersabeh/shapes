from shapes.base.models import Circle
from shapes.client.shell import Runner


def main():
    program: Runner = Runner()

    circle: Circle = Circle(15.25)
    circle.color = "Red"
    circle.print_description()

    program.run()


if __name__ == "__main__":
    main()
