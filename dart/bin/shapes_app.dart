import "package:shapes/base/models.dart" show Circle;
import "package:shapes/client/shell.dart" show Runner;

void main() {
  Runner program = Runner();

  Circle circle = Circle(15.25);
  circle.printDescription();

  program.run();
}
