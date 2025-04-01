package shapes.base.commons;

import java.util.List;
import java.util.Map;

public abstract class BaseShape {
    private final List<Map<String, Double>> dimensions;

    /**
     * Initialize the BaseShape with a list of dictionaries representing dimensions.
     * Each dictionary should have a single key-value pair, e.g.,
     * <code>[{"width": 12}, {"length": 15}]</code>.
     */
    public BaseShape(List<Map<String, Double>> dimensions) {
        this.dimensions = dimensions;
    }

    public List<Map<String, Double>> getDimensions() {
        return dimensions;
    }

    public int getDimensionAvailable() {
        return dimensions.size();
    }

    public static boolean isAShape() {
        return true;
    }

    public abstract void printDescription();
}
