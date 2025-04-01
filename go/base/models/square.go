package models

import "math"

type Square struct {
	side float64
}

func (Square) New(side float64) *Square {
	var dim1 = map[bool]float64{true: side, false: 1}[side > 0]
	return &Square{side: dim1}
}

func (s *Square) Area() float64 {
	return math.Pow(s.side, 2)
}

func (s *Square) Perimeter() float64 {
	return 4 * s.side
}
