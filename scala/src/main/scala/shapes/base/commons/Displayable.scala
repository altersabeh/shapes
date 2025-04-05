package shapes.base.commons

trait Displayable {
    def shouldDisplay: Boolean = {
        true
    }

    def display(): Unit = {
        if (shouldDisplay) {
            println("Yes, this shape can be displayed.")
        } else {
            println("No, this shape cannot be displayed.")
        }
    }
}
