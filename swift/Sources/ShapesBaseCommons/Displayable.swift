public protocol Displayable {}

extension Displayable {
    public func shouldDisplay() -> Bool {
        return true
    }

    public func display() {
        if shouldDisplay() {
            print("Yes, this shape can be displayed.")
        } else {
            print("No, this shape cannot be displayed.")
        }
    }
}
