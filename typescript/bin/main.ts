#!/usr/bin/env jiti

import { Circle } from "shapes/base/models";
import { Runner } from "shapes/client/shell";

function main() {
    const program: Runner = new Runner();

    const circle: Circle = new Circle(15.25);
    circle.printDescription();

    program.run();
}

main();
