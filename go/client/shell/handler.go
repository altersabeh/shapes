package shell

import (
	"fmt"
	. "shapes/base/models"
)

type Handler struct{}

func (Handler) handleCircle() {
	fmt.Println("What is the radius of the circle?")
	radius := readNumber()
	circle := Circle{}.New(radius)
	fmt.Printf("Area: %.3f\n", circle.Area())
	fmt.Printf("Circumference: %.3f\n", circle.Perimeter())
}

func (Handler) handleRectangle() {
	fmt.Println("What is the height of the rectangle?")
	width := readNumber()
	fmt.Println("What is the width of the rectangle?")
	length := readNumber()
	rectangle := Rectangle{}.New(length, width)
	fmt.Printf("Area: %.3f\n", rectangle.Area())
	fmt.Printf("Perimeter: %.3f\n", rectangle.Perimeter())
}

func (Handler) handleSquare() {
	fmt.Println("What is the side length of the square?")
	side := readNumber()
	square := Square{}.New(side)
	fmt.Printf("Area: %.3f\n", square.Area())
	fmt.Printf("Perimeter: %.3f\n", square.Perimeter())
}
