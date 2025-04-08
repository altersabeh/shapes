package shapes.base.models

import shapes.base.commons.Dimensional

class Rectangle : Dimensional {
    private var width: Double
    private var height: Double

    constructor(width: Double, height: Double) {
        val dim1 = if (width > 0) width else 1.0
        val dim2 = if (height > 0) height else 1.0

        this.width = dim1
        this.height = dim2
    }

    override fun area(): Double {
        return width * height
    }

    override fun perimeter(): Double {
        return 2 * (width + height)
    }
}
