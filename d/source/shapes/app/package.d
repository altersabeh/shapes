module shapes.app;

import shapes.base.models;
import shapes.client.shell : Runner;

void main() {
    Runner program = new Runner();

    Circle circle = new Circle(15.25);
    circle.color = "RED";
    circle.printDescription();

    program.run();
}
