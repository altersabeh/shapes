package main

import (
	. "shapes/base/models"
	. "shapes/client/shell"
)

func main() {
	var program *Runner = Runner{}.New()

	var circle *Circle = Circle{}.New(15.25)
    circle.SetColor("RED")
	circle.PrintDescription()

	program.Run()
}
