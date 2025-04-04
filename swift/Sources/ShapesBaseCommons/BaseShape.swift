import Foundation

/// BaseShape is a class that represents a generic shape with dimensions.
open class BaseShape {
    private let _dimensions: [[String: Double]]

    /// Initialize the BaseShape with an array of associative arrays
    /// representing dimensions. Each associative array should have a
    /// single key-value pair, e.g., `["radius" => 12]`.
    public init(dimensions: [[String: Double]]) {
        self._dimensions = dimensions
    }

    public var dimensions: [[String: Double]] {
        return _dimensions
    }

    public func showAvailableDimensionCount() -> Int {
        return _dimensions.count
    }

    public static func validateShape() -> Bool {
        return true
    }

    open func printDescription() {
        fatalError("Must override printDescription() in subclass")
    }
}
