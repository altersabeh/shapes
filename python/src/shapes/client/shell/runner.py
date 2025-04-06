from collections.abc import Callable
from typing import Any, final

from shapes.client.shell import handler

from .input_reader import read_input


@final
class Runner:
    def __init__(self):
        print("=" * 53)
        print("Welcome to the Area and Perimeter Calculator!")
        print("=" * 53)

    @staticmethod
    def starting_message():
        print("Choose a shape to calculate its area and perimeter.")
        print("  [C] CIRCLE")
        print("  [R] RECTANGLE")
        print("  [S] SQUARE")
        print("Type '[E]XIT' to quit the program.")

    def run(self):
        # pylint: disable=unnecessary-lambda-assignment
        print_thank_you_message = lambda: (
            print("Thank you for using the Shapes CLI!"),
            print("P.S. Did you know? The secret code is 42!"),
        )

        while True:
            Runner.starting_message()

            shape = read_input()
            if shape == "q":
                print_thank_you_message()
                break

            actions: dict[str, Callable[..., Any]] = {
                "circle": handler.handle_circle,
                "c": handler.handle_circle,
                "rectangle": handler.handle_rectangle,
                "r": handler.handle_rectangle,
                "square": handler.handle_square,
                "s": handler.handle_square,
            }

            action = actions.get(
                shape,
                lambda: (
                    print("Invalid input. Please try again."),
                    print("Type one of the listed options."),
                ),
            )

            action()

            print("=" * 53)
