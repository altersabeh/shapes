import { readInput } from "./input-reader";

import * as handler from "./handler";

export class Runner {
    constructor() {
        console.log("=".repeat(53));
        console.log("Welcome to the Area and Perimeter Calculator!");
        console.log("=".repeat(53));
    }

    private static startingMessage(): void {
        console.log("Choose a shape to calculate its area and perimeter.:");
        console.log("  [C] CIRCLE");
        console.log("  [R] RECTANGLE");
        console.log("  [S] SQUARE");
        console.log("Type '[E]XIT' to quit the program.");
    }

    public async run(): Promise<void> {
        const printThankYouMessage = (): void => {
            console.log("Thank you for using the Shapes CLI!");
            console.log("P.S. Did you know? The secret code is 42!");
        };

        while (true) {
            Runner.startingMessage();

            const shape = await readInput();
            if (shape === "q") {
                printThankYouMessage();
                process.exit(0);
            }

            const actions: Record<string, () => Promise<void>> = {
                circle: handler.handleCircle,
                c: handler.handleCircle,
                rectangle: handler.handleRectangle,
                r: handler.handleRectangle,
                square: handler.handleSquare,
                s: handler.handleSquare,
            };

            const action =
                actions[shape] ||
                (async () => {
                    console.log("Invalid input. Please try again.");
                    console.log("Type one of the listed options.");
                });

            await action();

            console.log("=".repeat(53));
        }
    }
}
