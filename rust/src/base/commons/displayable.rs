pub trait Displayable {
    fn should_display(&self) -> bool {
        true
    }

    fn display(&self) {
        if self.should_display() {
            println!("Yes, this shape can be displayed.");
        } else {
            println!("Shape is not displayable.");
        }
    }
}
