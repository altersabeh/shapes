module shapes.base.commons.baseshape;

abstract class BaseShape {
private:
    double[string][] _dimensions;

protected:
    /**
     * Initialize the BaseShape with an array of associative arrays representing dimensions.
     * Each associative array should have a single key-value pair, e.g., `["radius" => 12]`.
     */
    this(double[string][] dimensions) {
        _dimensions = dimensions;
    }

    @property ref const(double[string][]) dimensions() const {
        return _dimensions;
    }

public:
    ulong getDimensionAvailable() const {
        return dimensions.length;
    }

    static bool isAShape() {
        return true;
    }

    abstract void printDescription() const;
}
