package shapes.base.commons

abstract class BaseShape(private var _dimensions: List[Map[String, Double]] = List()) {
    def dimensions: List[Map[String, Double]] = {
        _dimensions
    }

    def showAvailableDimensionCount: Int = {
        _dimensions.size
    }

    def printDescription(): Unit
}

object BaseShape {
    def validateShape: Boolean = {
        true
    }
}
