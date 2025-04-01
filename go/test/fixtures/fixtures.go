package fixtures

import (
	. "shapes/base/models"
)

func SetupCircle() Circle {
	radius := 15.5
	return *Circle{}.New(radius)
}

func SetupRectangle() Rectangle {
	length := 22.75
	width := 33.25
	return *Rectangle{}.New(length, width)
}

func SetupSquare() Square {
	side := 10.25
	return *Square{}.New(side)
}
