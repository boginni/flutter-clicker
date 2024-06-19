class ValueModifierModel {
  final String id;
  final double modifier;

  ValueModifierModel({
    required this.id,
    required this.modifier,
  });

  factory ValueModifierModel.fromJson(Map<String, dynamic> json) {
    return ValueModifierModel(
      id: json['id'],
      modifier: json['modifier'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'modifier': modifier,
    };
  }
}
