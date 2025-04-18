package shapes.base.models

import shapes.base.commons.Dimensional

class Rectangle : Dimensional {
    private var width: Double
    private var height: Double

    constructor(width: Double, height: Double) {
        val dimOne: Double = if (width > 0) width else 1.0
        val dimTwo: Double = if (height > 0) height else 1.0
        this.width = dimOne
        this.height = dimTwo
    }

    override fun area(): Double {
        return width * height
    }

    override fun perimeter(): Double {
        return 2 * (width + height)
    }
}
