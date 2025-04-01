import { Dimensional } from "shapes/base/commons";
import { describe, expect, it } from "vitest";
import * as fixtures from "./fixtures";

describe("Dimensional Tests", () => {
    it("Test Circle Implements Dimensional", () => {
        const circle = fixtures.setupCircle();
        assertDimensional(circle, 754.767, 97.389);
    });

    it("Test Rectangle Implements Dimensional", () => {
        const rectangle = fixtures.setupRectangle();
        assertDimensional(rectangle, 756.437, 112.0);
    });

    it("Test Square Implements Dimensional", () => {
        const square = fixtures.setupSquare();
        assertDimensional(square, 105.062, 41.0);
    });
});

export function assertDimensional(
    dimensionalShape: Dimensional,
    expectedArea: number,
    expectedPerimeter: number
) {
    const areaDiff = Math.abs(dimensionalShape.area() - expectedArea);
    const perimeterDiff = Math.abs(dimensionalShape.perimeter() - expectedPerimeter);

    expect(areaDiff, "AREA NOT EQUAL").toBeLessThan(0.001);
    expect(perimeterDiff, "PERIMETER NOT EQUAL!").toBeLessThan(0.001);
}
