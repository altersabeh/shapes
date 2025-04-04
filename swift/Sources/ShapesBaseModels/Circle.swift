import Foundation
import ShapesBaseCommons

public final class Circle: BaseShape, Dimensional, Displayable {
    private var radius: Double
    private var _color: String

    public init(radius: Double) {
        let dim1: Double = radius > 0 ? radius : 0

        self.radius = dim1
        self._color = "None"

        super.init(dimensions: [
            ["radius": max(radius, 1)], ["diameter": max(radius, 1) * 2],
            ["curvature": 1 / max(radius, 1)],
        ])
    }

    public var color: String {
        get {
            return _color
        }

        set(value) {
            _color = value
        }
    }

    public override func printDescription() {
        print("Circle radius: \(radius)")
        print("Circle dimensions: \(formatDimensions())")
        print("Circle color: \(color)")
        print("Circle area: \(area())")
        print("Circle perimeter: \(perimeter())")
        print("Circle is displayable: \(shouldDisplay())")
        print("Circle is a shape: \(Circle.validateShape())")
    }

    public func area() -> Double {
        return Double.pi * pow(radius, 2)
    }

    public func perimeter() -> Double {
        return 2 * Double.pi * radius
    }

    private func formatDimensions() -> String {
        let formattedString =
            dimensions.map { dim in
                dim.map { "\($0.key): \($0.value)" }.joined(separator: " | ")
            }
            .joined(separator: " | ")

        return formattedString
    }
}
