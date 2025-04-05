package shapes.base.models

import shapes.base.commons.Dimensional

import scala.compiletime.uninitialized

final class Rectangle extends Dimensional {
    private var width: Double = uninitialized
    private var height: Double = uninitialized

    def this(width: Double, height: Double) = {
        this()
        var dim1: Double = if (width > 0) width else 1.0
        var dim2: Double = if (height > 0) height else 1.0
        this.width = dim1
        this.height = dim2
    }

    override def area: Double = {
        width * height
    }

    override def perimeter: Double = {
        2 * (width + height)
    }
}
