package models

import (
	"fmt"
	"math"
	. "shapes/base/commons"
	"strings"
)

type Circle struct {
	BaseShape   *BaseShape
	Displayable *Displayable
	radius      float64
	color       string
}

func (Circle) New(radius float64) *Circle {
	var dim1 = map[bool]float64{true: radius, false: 1}[radius > 0]

	baseShape := BaseShape{}.New(
		[]map[string]float64{
			{"radius": math.Max(radius, 0)},
			{"diameter": math.Max(radius, 0) * 2},
		},
	)

	return &Circle{
		BaseShape:   baseShape,
		Displayable: &Displayable{},
		radius:      dim1,
		color:       "None",
	}
}

func (c *Circle) GetColor() string {
	return c.color
}

func (c *Circle) SetColor(color string) {
	c.color = color
}

func (c *Circle) PrintDescription() {
	fmt.Printf("Circle radius: %.2f\n", c.radius)
	fmt.Printf("Circle dimensions: %v\n", c.dimensionFormatter())
	fmt.Printf("Circle color: %s\n", c.color)
	fmt.Printf("Circle area: %.2f\n", c.Area())
	fmt.Printf("Circle perimeter: %.2f\n", c.Perimeter())
	fmt.Printf("Circle is displayable: %t\n", c.Displayable.IsDisplayable())
	fmt.Printf("Circle is a shape: %t\n", c.BaseShape.IsAShape())
}

func (c *Circle) Area() float64 {
	return math.Pi * math.Pow(c.radius, 2)
}

func (c *Circle) Perimeter() float64 {
	return 2 * math.Pi * c.radius
}

func (c *Circle) dimensionFormatter() string {
	var parts []string
	for _, dim := range c.BaseShape.Dimensions {
		for k, v := range dim {
			parts = append(parts, fmt.Sprintf("%s: %.2f", k, v))
		}
	}
	formattedString := strings.Join(parts, " | ")
	return formattedString
}
