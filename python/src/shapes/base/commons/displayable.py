class Displayable:
    def is_displayable(self) -> bool:
        return True

    def display(self):
        if self.is_displayable():
            print("Yes, this shape can be displayed.")
        else:
            print("No, this shape cannot be displayed.")
