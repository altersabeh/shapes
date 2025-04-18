package models

type Rectangle struct {
	width  float64
	height float64
}

func (Rectangle) New(width, height float64) *Rectangle {
	var dimOne = map[bool]float64{true: width, false: 1}[width > 0]
	var dimTwo = map[bool]float64{true: height, false: 1}[height > 0]
	return &Rectangle{width: dimOne, height: dimTwo}
}

func (r Rectangle) Area() float64 {
	return r.width * r.height
}

func (r Rectangle) Perimeter() float64 {
	return 2 * (r.width + r.height)
}
