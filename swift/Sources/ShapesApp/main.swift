import Foundation

import class ShapesBaseModels.Circle
import class ShapesClientShell.Runner

func main() {
    let program: Runner = Runner()

    let circle = Circle(radius: 15.25)
    circle.color = "RED"
    circle.printDescription()

    program.run()
}

main()
