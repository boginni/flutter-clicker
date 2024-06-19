import 'package:flutter/cupertino.dart';

import '../../domain/value_modifier_entity.dart';

class GlobalValueStore extends ValueNotifier<int> {
  late double _value = super.value.toDouble();
  List<ValueModifierModel> modifiers = [];

  GlobalValueStore(super.value);

  @override
  int get value => _value.toInt();

  double get _modifierValue => modifiers.fold(
      0, (previousValue, element) => previousValue + element.modifier);

  void increment() {
    _value += _modifierValue + 1;
    notifyListeners();
  }

  void reset() {
    _value = 0;
    modifiers = [];
    notifyListeners();
  }

  void addModifier(ValueModifierModel modifier) {
    modifiers.add(modifier);
    notifyListeners();
  }

  void subtractValue(int price) {
    _value -= price;
    notifyListeners();
  }
}
