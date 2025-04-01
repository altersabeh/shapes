package commons

import "fmt"

type Displayable struct{}

func (Displayable) IsDisplayable() bool {
	return true
}

func (d *Displayable) Display() {
	if d.IsDisplayable() {
		fmt.Println("Yes, this shape can be displayed.")
	} else {
		fmt.Println("No, this shape cannot be displayed.")
	}
}
