package test

import (
	"math"
	"shapes/test/fixtures"
	"testing"

	"github.com/stretchr/testify/assert"
)

const DELTA = 0.001

func TestCircle(t *testing.T) {
	t.Run("Test Circle Area", func(t *testing.T) {
		circle := fixtures.SetupCircle()
		result := circle.Area()
		expected := 754.767
		assert.True(t, math.Abs(expected-result) < DELTA)
	})

	t.Run("Test Circle Circumference", func(t *testing.T) {
		circle := fixtures.SetupCircle()
		result := circle.Perimeter()
		expected := 97.389
		assert.True(t, math.Abs(expected-result) < DELTA)
	})
}

func TestRectangle(t *testing.T) {
	t.Run("Test Rectangle Area", func(t *testing.T) {
		rectangle := fixtures.SetupRectangle()
		result := rectangle.Area()
		expected := 756.437
		assert.True(t, math.Abs(expected-result) < DELTA)
	})

	t.Run("Test Rectangle Perimeter", func(t *testing.T) {
		rectangle := fixtures.SetupRectangle()
		result := rectangle.Perimeter()
		expected := 112.0
		assert.True(t, math.Abs(expected-result) < DELTA)
	})
}

func TestSquare(t *testing.T) {
	t.Run("Test Square Area", func(t *testing.T) {
		square := fixtures.SetupSquare()
		result := square.Area()
		expected := 105.062
		assert.True(t, math.Abs(expected-result) < DELTA)
	})

	t.Run("Test Square Perimeter", func(t *testing.T) {
		square := fixtures.SetupSquare()
		result := square.Perimeter()
		expected := 41.0
		assert.True(t, math.Abs(expected-result) < DELTA)
	})
}
