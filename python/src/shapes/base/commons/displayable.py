class Displayable:
    def should_display(self) -> bool:
        return True

    def display(self):
        if self.should_display():
            print("Yes, this shape can be displayed.")
        else:
            print("No, this shape cannot be displayed.")
