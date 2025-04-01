package commons

type BaseShape struct {
	Dimensions []map[string]float64
}

func (BaseShape) New(dimensions []map[string]float64) *BaseShape {
	return &BaseShape{Dimensions: dimensions}
}

func (b *BaseShape) GetDimensionAvailable() int {
	return len(b.Dimensions)
}

func (BaseShape) IsAShape() bool {
	return true
}
