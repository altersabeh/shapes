package shell

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
	"strings"
)

func readInput() string {
	fmt.Print("Your Answer >>> ")
	var userInput string
	reader := bufio.NewReader(os.Stdin)
	userInput, _ = reader.ReadString('\n')
	userInput = strings.TrimSpace(strings.ToLower(userInput))
	readExit(userInput)
	return userInput
}

func readNumber() float64 {
	for {
		userInput := readInput()

		value, err := strconv.ParseFloat(userInput, 64)
		if err == nil {
			return value
		}
		fmt.Println("Invalid number. Please try again.")
	}
}

func readExit(userInput string) {
	if userInput == "exit" || userInput == "e" {
		fmt.Println("Thank you for using the Shapes CLI!")
		os.Exit(0)
	}
}
