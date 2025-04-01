import { describe, expect, it } from "vitest";
import * as fixtures from "./fixtures";

const DELTA = 0.001;

describe("Circle Tests", () => {
    it("Test Circle Area", () => {
        const circle = fixtures.setupCircle();
        const result = circle.area();
        const expected = 754.767;
        expect(Math.abs(result - expected)).toBeLessThan(DELTA);
    });

    it("Test Circle Circumference", () => {
        const circle = fixtures.setupCircle();
        const result = circle.perimeter();
        const expected = 97.389;
        expect(Math.abs(result - expected)).toBeLessThan(DELTA);
    });
});

describe("Rectangle Tests", () => {
    it("Test Rectangle Area", () => {
        const rectangle = fixtures.setupRectangle();
        const result = rectangle.area();
        const expected = 756.437;
        expect(Math.abs(result - expected)).toBeLessThan(DELTA);
    });

    it("Test Rectangle Perimeter", () => {
        const rectangle = fixtures.setupRectangle();
        const result = rectangle.perimeter();
        const expected = 112.0;
        expect(Math.abs(result - expected)).toBeLessThan(DELTA);
    });
});

describe("Square Tests", () => {
    it("Test Square Area", () => {
        const square = fixtures.setupSquare();
        const result = square.area();
        const expected = 105.062;
        expect(Math.abs(result - expected)).toBeLessThan(DELTA);
    });

    it("Test Square Perimeter", () => {
        const square = fixtures.setupSquare();
        const result = square.perimeter();
        const expected = 41.0;
        expect(Math.abs(result - expected)).toBeLessThan(DELTA);
    });
});
