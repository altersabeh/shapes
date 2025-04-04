class Displayable:
    def displayable(self) -> bool:
        return True

    def display(self):
        if self.displayable():
            print("Yes, this shape can be displayed.")
        else:
            print("No, this shape cannot be displayed.")
