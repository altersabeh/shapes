package shapes.base.models

import kotlin.math.PI
import kotlin.math.pow
import shapes.base.commons.BaseShape
import shapes.base.commons.Dimensional
import shapes.base.commons.Displayable

class Circle : BaseShape, Dimensional, Displayable {
    private val radius: Double
    private var _color: String

    constructor(
            radius: Double
    ) : super(
            listOf(
                    mapOf("radius" to maxOf(radius, 1.0)),
                    mapOf("diameter" to maxOf(radius, 1.0) * 2),
                    mapOf("curvature" to 1 / maxOf(radius, 1.0))
            )
    ) {
        val dim1 = if (radius > 0) radius else 1.0

        this.radius = dim1
        this._color = "None"
    }

    var color: String
        get() = _color
        set(value) {
            _color = value
        }

    override fun printDescription() {
        println("Circle radius: $radius")
        println("Circle dimensions: ${formatDimensions()}")
        println("Circle color: $color")
        println("Circle area: ${area()}")
        println("Circle perimeter: ${perimeter()}")
        println("Circle is displayable: ${shouldDisplay()}")
        println("Circle is a shape: ${validateShape()}")
    }

    override fun area(): Double {
        return PI * radius.pow(2)
    }

    override fun perimeter(): Double {
        return 2 * PI * radius
    }

    private fun formatDimensions(): String {
        val parts: List<String> =
                dimensions.map { dimension ->
                    dimension.entries.joinToString(", ") { (key, value) ->
                        "${key.uppercase()}: %.3f".format(value)
                    }
                }

        return parts.joinToString(" | ")
    }
}
