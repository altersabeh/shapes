import ShapesBaseModels

public class Helper {
    public class func setupCircle() -> Circle {
        let radius: Double = 15.5
        return Circle(radius: radius)
    }

    public class func setupRectangle() -> Rectangle {
        let width: Double = 22.75
        let height: Double = 33.25
        return Rectangle(width: width, height: height)
    }

    public class func setupSquare() -> Square {
        let side: Double = 10.25
        return Square(side: side)
    }
}
