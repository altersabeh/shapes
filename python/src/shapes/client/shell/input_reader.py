import sys


def read_input() -> str:
    print("Your Answer >>> ", end="")
    user_input = input()
    user_input = user_input.strip().lower()
    read_exit(user_input)
    return user_input


def read_number() -> float:
    while True:
        user_input = read_input()

        try:
            return float(user_input)
        except ValueError:
            print("Invalid number. Please try again.")


def read_exit(user_input: str):
    if user_input in ["exit", "e"]:
        print("Thank you for using the Shapes CLI!")
        sys.exit(0)
