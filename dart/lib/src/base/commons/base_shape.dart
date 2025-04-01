abstract base class BaseShape {
  final List<Map<String, double>> _dimensions;

  /// Initialize the BaseShape with an array of associative arrays
  /// representing dimensions. Each associative array should have a
  /// single key-value pair, e.g., `["radius" => 12]`.
  BaseShape(this._dimensions);

  List<Map<String, double>> get dimensions {
    return _dimensions;
  }

  int getDimensionAvailable() {
    return _dimensions.length;
  }

  static bool isAShape() {
    return true;
  }

  void printDescription();
}
