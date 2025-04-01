import * as readline from "node:readline";

const rl = readline.createInterface({
    input: process.stdin,
    output: process.stdout,
});

export function readInput(): Promise<string> {
    return new Promise((resolve) => {
        rl.question("Your Answer >>> ", (userInput: string) => {
            userInput = userInput.toLowerCase();
            readExit(userInput);
            resolve(userInput);
        });
    });
}

export async function readNumber(): Promise<number> {
    while (true) {
        const userInput = await readInput();

        if (/^\s*-?\d+(\.\d+)?\s*$/.test(userInput)) {
            return parseFloat(userInput);
        } else {
            console.log("Invalid number. Please try again.");
        }
    }
}

function readExit(userInput: string): void {
    if (userInput === "exit" || userInput === "e") {
        console.log("Thank you for using the Shapes CLI!");
        rl.close();
        process.exit(0);
    }
}
