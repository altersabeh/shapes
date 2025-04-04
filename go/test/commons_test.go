package test

import (
	"math"
	. "shapes/base/commons"
	helper "shapes/test/fixtures"
	"testing"

	"github.com/stretchr/testify/assert"
)

func TestMeasurableInterface(test *testing.T) {
	test.Run("Test Circle Implements Measurable", func(test *testing.T) {
		circle := helper.SetupCircle()
		assertMeasurable(test, &circle, 754.767, 97.389)
	})

	test.Run("Test Rectangle Implements Measurable", func(test *testing.T) {
		rectangle := helper.SetupRectangle()
		assertMeasurable(test, &rectangle, 756.437, 112.0)
	})

	test.Run("Test Square Implements Measurable", func(test *testing.T) {
		square := helper.SetupSquare()
		assertMeasurable(test, &square, 105.062, 41.0)
	})
}

func assertMeasurable(
	test *testing.T,
	shape Dimensional,
	expectedArea float64,
	expectedPerimeter float64,
) {
	var areaDiff = math.Abs(expectedArea - shape.Area())
	var perimeterDiff = math.Abs(expectedPerimeter - shape.Perimeter())

	assert.True(test, areaDiff < DELTA, "AREA NOT EQUAL")
	assert.True(test, perimeterDiff < DELTA, "PERIMETER NOT EQUAL!")
}
