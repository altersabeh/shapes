import ShapesBaseModels

public func setupCircle() -> Circle {
    let radius: Double = 15.5
    return Circle(radius: radius)
}

public func setupRectangle() -> Rectangle {
    let width: Double = 22.75
    let height: Double = 33.25
    return Rectangle(width: width, height: height)
}

public func setupSquare() -> Square {
    let side: Double = 10.25
    return Square(side: side)
}
