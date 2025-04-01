package shapes.app;

import shapes.base.models.Circle;
import shapes.client.shell.Runner;

public class Main {
    public static void main(String[] args) {
        Runner program = new Runner();

        Circle circle = new Circle(15.25);
        circle.printDescription();

        program.run();
    }
}
