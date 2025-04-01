import { Dimensional } from "../commons";

export class Rectangle implements Dimensional {
    private width: number;
    private height: number;

    constructor(width: number, height: number) {
        const dim1: number = width > 0 ? width : 1;
        const dim2: number = height > 0 ? height : 1;
        this.width = dim1;
        this.height = dim2;
    }

    area(): number {
        return this.width * this.height;
    }

    perimeter(): number {
        return 2 * (this.width + this.height);
    }
}
