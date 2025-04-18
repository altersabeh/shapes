import Foundation
import ShapesBaseCommons

public final class Rectangle: Dimensional {
    private let width: Double
    private let height: Double

    public init(_ width: Double, _ height: Double) {
        let dimOne: Double = width > 0 ? width : 1
        let dimTwo: Double = height > 0 ? height : 1
        self.width = dimOne
        self.height = dimTwo
    }

    public func area() -> Double {
        return width * height
    }

    public func perimeter() -> Double {
        return 2 * (width + height)
    }
}
