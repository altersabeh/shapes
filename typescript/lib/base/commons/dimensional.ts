/**
 * Represents a geometric shape with methods to calculate its area and perimeter.
 *
 * This interface is designed to be implemented by various geometric shapes,
 * providing a consistent API for calculating their properties.
 *
 * @interface Measurable
 * @method area
 *   Calculates the area of the geometric shape.
 *   @returns {number} The area of the shape.
 *
 * @method perimeter
 *   Calculates the perimeter of the geometric shape.
 *   @returns {number} The perimeter of the shape.
 */

/**
 * # `interface Dimensions`
 *
 * Defines the interface for measurable shapes.
 */
export interface Dimensional {
    /**
     * Calculates the area of the shape.
     */
    area(): number;

    /**
     * Calculates the perimeter of the shape.
     */
    perimeter(): number;
}
