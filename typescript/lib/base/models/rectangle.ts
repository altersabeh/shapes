import { Dimensional } from "../commons";

export class Rectangle implements Dimensional {
    private width: number;
    private height: number;

    constructor(width: number, height: number) {
        const dimOne: number = width > 0 ? width : 1;
        const dimTwo: number = height > 0 ? height : 1;
        this.width = dimOne;
        this.height = dimTwo;
    }

    area(): number {
        return this.width * this.height;
    }

    perimeter(): number {
        return 2 * (this.width + this.height);
    }
}
