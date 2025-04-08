package shapes.base.commons

abstract class BaseShape {
    private val _dimensions: List<Map<String, Double>>

    constructor(dimensions: List<Map<String, Double>>) {
        this._dimensions = dimensions
    }

    val dimensions: List<Map<String, Double>>
        get() = _dimensions

    fun showAvailableDimensionCount(): Int {
        return dimensions.size
    }

    companion object {
        fun validateShape(): Boolean {
            return true
        }
    }

    abstract fun printDescription()
}
