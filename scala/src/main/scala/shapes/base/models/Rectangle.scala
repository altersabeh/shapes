package shapes.base.models

import shapes.base.commons.Dimensional

import scala.compiletime.uninitialized

final class Rectangle extends Dimensional {
    private var width: Double = uninitialized
    private var height: Double = uninitialized

    def this(width: Double, height: Double) = {
        this()
        var dimOne: Double = if (width > 0) width else 1.0
        var dimTwo: Double = if (height > 0) height else 1.0
        this.width = dimOne
        this.height = dimTwo
    }

    override def area: Double = {
        width * height
    }

    override def perimeter: Double = {
        2 * (width + height)
    }
}
