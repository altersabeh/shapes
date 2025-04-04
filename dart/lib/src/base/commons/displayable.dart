abstract mixin class Displayable {
  bool shouldDisplay() {
    return true;
  }

  void display() {
    if (shouldDisplay()) {
      print("Yes, this shape can be displayed.");
    } else {
      print("No, this shape cannot be displayed.");
    }
  }
}
