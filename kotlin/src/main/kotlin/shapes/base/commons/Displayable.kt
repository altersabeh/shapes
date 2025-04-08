package shapes.base.commons

interface Displayable {
    fun shouldDisplay(): Boolean {
        return true
    }

    fun display() {
        if (shouldDisplay()) {
            println("Yes, this shape can be displayed.")
        } else {
            println("No, this shape cannot be displayed.")
        }
    }
}
