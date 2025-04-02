public protocol Displayable {}

extension Displayable {
    public func isDisplayable() -> Bool {
        return true
    }

    public func display() {
        if isDisplayable() {
            print("Yes, this shape can be displayed.")
        } else {
            print("No, this shape cannot be displayed.")
        }
    }
}
