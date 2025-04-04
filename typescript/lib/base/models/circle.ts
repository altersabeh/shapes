import { BaseShape, Dimensional, Displayable } from "../commons";

@Displayable
export class Circle extends BaseShape implements Dimensional {
    private readonly radius: number;
    private _color: string;

    constructor(radius: number) {
        const dim1: number = radius > 0 ? radius : 1;

        super([
            { radius: Math.max(radius, 1) },
            { diameter: Math.max(radius, 1) },
            { curvature: 1 / Math.max(radius, 1) },
        ]);

        this.radius = dim1;
        this._color = "None";
    }

    get color(): string {
        return this._color;
    }

    set color(value: string) {
        this._color = value;
    }

    printDescription(): void {
        console.log(`Circle radius: ${this.radius}`);
        console.log(`Circle dimensions: ${this.formatDimensions()}`);
        console.log(`Circle color: ${this.color}`);
        console.log(`Circle area: ${this.area()}`);
        console.log(`Circle perimeter: ${this.perimeter()}`);
        // eslint-disable-next-line @typescript-eslint/no-explicit-any
        console.log(`Circle is displayable: ${(this as any).shouldDisplay()}`);
        console.log(`Circle is a shape: ${Circle.validateShape()}`);
    }

    area(): number {
        return Math.PI * Math.pow(this.radius, 2);
    }

    perimeter(): number {
        return 2 * Math.PI * this.radius;
    }

    private formatDimensions(): string {
        const parts: string[] = this.dimensions.map((dim) => {
            const [key, value] = Object.entries(dim)[0] ?? ["", 0];
            return `${key}: ${value.toFixed(3)}`;
        });

        return parts.join(" | ");
    }
}
