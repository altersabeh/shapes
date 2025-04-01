// eslint-disable-next-line @typescript-eslint/no-explicit-any
export function Displayable<T extends { new (...args: any[]): object }>(target: T) {
    return class extends target {
        isDisplayable(): boolean {
            return true;
        }

        display(): void {
            if (this.isDisplayable()) {
                console.log("Yes, this shape can be displayed.");
            } else {
                console.log("No, this shape cannot be displayed.");
            }
        }
    };
}
