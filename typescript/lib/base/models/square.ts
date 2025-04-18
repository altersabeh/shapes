import { Dimensional } from "../commons";

export class Square implements Dimensional {
    private side: number;

    constructor(side: number) {
        const dimOne: number = side > 0 ? side : 1;
        this.side = dimOne;
    }

    area(): number {
        return Math.pow(this.side, 2);
    }

    perimeter(): number {
        return 4 * this.side;
    }
}
