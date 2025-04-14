import Foundation
import ShapesBaseCommons

public final class Square: Dimensional {
    private let side: Double

    public init(_ side: Double) {
        let dim1: Double = side > 0 ? side : 1
        self.side = dim1
    }

    public func area() -> Double {
        return pow(side, 2)
    }

    public func perimeter() -> Double {
        return 4 * side
    }
}
