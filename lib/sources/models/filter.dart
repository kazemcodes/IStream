class Filter<V> {
  final String name;
  final V initialValue;
  late V value;
  bool isDefaultValue() {
    return initialValue == value;
  }

  Filter({
    required this.name,
    required this.initialValue,
  }) {
    this.value = initialValue;
  }
  static Check check(String name, bool initialValue, bool allowsExclusion) {
    return Check(
        name: name,
        initialValue: initialValue,
        allowsExclusion: allowsExclusion);
  }

  static Check select(String name, bool initialValue, bool allowsExclusion) {
    return Check(
        name: name,
        initialValue: initialValue,
        allowsExclusion: allowsExclusion);
  }
}

class Check extends Filter<bool> {
  final bool allowsExclusion = false;

  Check(
      {required super.name,
      required super.initialValue,
      bool allowsExclusion = false});
}
