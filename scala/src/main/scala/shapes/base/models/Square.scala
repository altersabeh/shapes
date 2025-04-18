package shapes.base.models

import shapes.base.commons.Dimensional

import scala.compiletime.uninitialized

final class Square extends Dimensional {
    private var _side: Double = uninitialized

    def this(side: Double) = {
        this()
        var dimOne: Double = if (side > 0) side else 1.0
        this._side = dimOne
    }

    override def area: Double = {
        Math.pow(_side, 2)
    }

    override def perimeter: Double = {
        4 * _side
    }
}
