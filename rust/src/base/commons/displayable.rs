pub trait Displayable {
    fn is_displayable(&self) -> bool {
        true
    }

    fn display(&self) {
        if self.is_displayable() {
            println!("Yes, this shape can be displayed.");
        } else {
            println!("Shape is not displayable.");
        }
    }
}
