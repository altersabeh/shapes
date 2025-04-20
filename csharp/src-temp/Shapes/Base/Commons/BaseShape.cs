namespace Shapes.Base.Commons;

public abstract class BaseShape {
    private readonly List<Dictionary<string, double>> _dimensions;

    /// <summary>
    /// Initialize the BaseShape with a list of dictionaries representing dimensions.
    /// Each dictionary should have a single key-value pair, e.g.,
    /// <c>[{"width": 12}, {"length": 15}]</c>.
    /// </summary>
    protected BaseShape(List<Dictionary<string, double>> dimensions) {
        _dimensions = dimensions;
    }

    public List<Dictionary<string, double>> Dimensions {
        get => _dimensions;
    }

    public int ShowAvailableDimensionCount() {
        return _dimensions.Count;
    }

    public static bool ValidateShape() {
        return true;
    }

    public abstract void PrintDescription();
}
