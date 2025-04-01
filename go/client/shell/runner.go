package shell

import (
	"fmt"
	"strings"
)

type Runner struct{}

func (Runner) New() *Runner {
	fmt.Println(strings.Repeat("=", 53))
	fmt.Println("Welcome to the Area and Perimeter Calculator!")
	fmt.Println(strings.Repeat("=", 53))
	return &Runner{}
}

func (Runner) startingMessage() {
	fmt.Println("Choose a shape to calculate its area and perimeter.")
	fmt.Println("  [C] CIRCLE")
	fmt.Println("  [R] RECTANGLE")
	fmt.Println("  [S] SQUARE")
	fmt.Println("Type '[E]XIT' to quit the program.")
}

// Run starts the CLI application
func (Runner) Run() {
	printThankYouMessage := func() {
		fmt.Println("Thank you for using the Shapes CLI!")
		fmt.Println("P.S. Did you know? The secret code is 42!")
	}

	for {
		Runner{}.startingMessage()

		shape := readInput()
		if shape == "q" {
			printThankYouMessage()
			break
		}

		actions := map[string]func(){
			"circle":    Handler{}.handleCircle,
			"c":         Handler{}.handleCircle,
			"rectangle": Handler{}.handleRectangle,
			"r":         Handler{}.handleRectangle,
			"square":    Handler{}.handleSquare,
			"s":         Handler{}.handleSquare,
		}

		action := actions[shape]
		if action == nil {
			fmt.Println("Invalid shape. Please try again.")
			fmt.Println("Type one of the listed options.")
		} else {
			action()
		}

		fmt.Println(strings.Repeat("=", 53))
	}
}
