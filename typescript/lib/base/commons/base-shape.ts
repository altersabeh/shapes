export abstract class BaseShape {
    private _dimensions: Array<{ [key: string]: number }>;

    /**
     * Initialize the BaseShape with a list of dictionaries representing dimensions.
     * Each dictionary should have a single key-value pair, e.g., `[{"width":
     * 12}, {"length": 15}]`.
     */
    constructor(dimensions: Array<{ [key: string]: number }>) {
        this._dimensions = dimensions;
    }

    get dimensions(): Array<{ [key: string]: number }> {
        return this._dimensions;
    }

    abstract printDescription(): void;

    getDimensionsAvailable(): number {
        return this._dimensions.length;
    }

    static isAShape(): boolean {
        return true;
    }
}
