import Foundation
import ShapesBaseCommons

public final class Circle: BaseShape, Dimensional, Displayable {
    private var radius: Double
    private var _color: String

    public init(_ radius: Double) {
        let dimOne: Double = radius > 0 ? radius : 0

        self.radius = dimOne
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
        print("Circle radius: \(self.radius)")
        print("Circle dimensions: \(self.formatDimensions())")
        print("Circle color: \(self.color)")
        print("Circle area: \(self.area())")
        print("Circle perimeter: \(self.perimeter())")
        print("Circle is displayable: \(self.shouldDisplay())")
        print("Circle is a shape: \(Circle.validateShape())")
    }

    public func area() -> Double {
        return Double.pi * pow(radius, 2)
    }

    public func perimeter() -> Double {
        return 2 * Double.pi * radius
    }

    private func formatDimensions() -> String {
        let parts: [String] = dimensions.map { dimension in
            dimension.map { "\($0.key.uppercased()): \(String(format: "%.3f", $0.value))" }
                .joined(
                    separator: " | "
                )
        }

        return parts.joined(separator: " | ")
    }
}
