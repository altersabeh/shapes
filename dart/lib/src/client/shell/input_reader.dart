import "dart:io";

String? readInput() {
  stdout.write("Your answer >>> ");
  var userInput = stdin.readLineSync();
  userInput = userInput!.trim().toLowerCase();
  _readExit(userInput);
  return userInput;
}

double readDouble() {
  while (true) {
    var userInput = readInput();

    try {
      return double.parse(userInput!);
    } catch (_) {
      print("Invalid number. Please try again.");
    }
  }
}

void _readExit(String userInput) {
  if (userInput == "exit" || userInput == "e") {
    print("Thank you for using the Shapes CLI!");
    exit(0);
  }
}
