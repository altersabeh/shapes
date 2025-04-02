module shapes.client.shell.inputreader;

import core.stdc.stdlib;
import std.conv;
import std.stdio;
import std.string;

string readInput() {
    write("Your Answer >>> ");
    string userInput = readln();
    userInput = userInput.strip().toLower();
    readExit(userInput);
    return userInput;
}

static double readNumber() {
    while (true) {
        string userInput = readInput();

        try {
            return to!double(userInput);
        } catch (Exception) {
            writeln("Invalid number. Please try again.");
        }
    }
}

static void readExit(string userInput) {
    if (userInput == "exit" || userInput == "e") {
        writeln("Thank you for using the Shapes CLI!");
        exit(0);
    }
}
