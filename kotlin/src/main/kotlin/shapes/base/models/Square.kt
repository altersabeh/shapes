package shapes.base.models

import shapes.base.commons.Dimensional

class Square : Dimensional {
    private var side: Double

    constructor(side: Double) {
        val dimOne: Double = if (side > 0) side else 1.0
        this.side = dimOne
    }

    override fun area(): Double {
        return side * side
    }

    override fun perimeter(): Double {
        return 4 * side
    }
}
