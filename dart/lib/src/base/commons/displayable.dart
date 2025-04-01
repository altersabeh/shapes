abstract mixin class Displayable {
  bool isDisplayable() {
    return true;
  }

  void display() {
    if (isDisplayable()) {
      print("Yes, this shape can be displayed.");
    } else {
      print("No, this shape cannot be displayed.");
    }
  }
}
