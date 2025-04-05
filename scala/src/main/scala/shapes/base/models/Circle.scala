package shapes.base.models

import shapes.base.commons.{BaseShape, Dimensional, Displayable}

import scala.compiletime.uninitialized
import scala.math.Pi

final class Circle(radius: Double)
    extends BaseShape(
      List(
        Map("radius" -> Math.max(radius, 1.0)),
        Map("diameter" -> (Math.max(radius, 1.0) * 2)),
        Map("curvature" -> (1.0 / Math.max(radius, 1.0)))
      )
    )
    with Dimensional
    with Displayable {
    private var _color: String = "None"

    def color: String = _color
    def color_=(value: String): Unit = _color = value

    override def printDescription(): Unit = {
        println(s"Circle radius: $radius")
        println(s"Circle dimensions: ${this.formatDimensions}")
        println(s"Circle color: ${this.color}")
        println(s"Circle area: ${this.area}")
        println(s"Circle perimeter: ${this.perimeter}")
        println(s"Circle is displayable: ${this.shouldDisplay}")
        println(s"Circle is a shape: ${BaseShape.validateShape}")
    }

    override def area: Double = {
        Pi * Math.pow(radius, 2)
    }

    override def perimeter: Double = {
        2 * Pi * radius
    }

    private def formatDimensions: String = {
        val parts: List[String] = dimensions.map(
          _.map { case (key, value) => s"${key.toUpperCase}: ${"%.3f".format(value)}" }
              .mkString(" | ")
        )

        parts.mkString(" | ")
    }
}
