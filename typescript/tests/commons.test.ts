import { Dimensional } from "shapes/base/commons";
import { describe, expect, it } from "vitest";
import * as fixtures from "./fixtures";

describe("Measurable Tests", () => {
    it("Test Circle Implements Measurable", () => {
        const circle = fixtures.setupCircle();
        assertMeasurable(circle, 754.767, 97.389);
    });

    it("Test Rectangle Implements Measurable", () => {
        const rectangle = fixtures.setupRectangle();
        assertMeasurable(rectangle, 756.437, 112.0);
    });

    it("Test Square Implements Measurable", () => {
        const square = fixtures.setupSquare();
        assertMeasurable(square, 105.062, 41.0);
    });
});

export function assertMeasurable(
    geometricShape: Dimensional,
    expectedArea: number,
    expectedPerimeter: number
) {
    const areaDiff = Math.abs(geometricShape.area() - expectedArea);
    const perimeterDiff = Math.abs(geometricShape.perimeter() - expectedPerimeter);

    expect(areaDiff, "AREA NOT EQUAL").toBeLessThan(0.001);
    expect(perimeterDiff, "PERIMETER NOT EQUAL!").toBeLessThan(0.001);
}
