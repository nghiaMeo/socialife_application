import 'package:flutter/cupertino.dart';

class CheckboxProvider with ChangeNotifier {
  bool _isChecked = false;

  bool get isChecked => _isChecked;

  void toggle(bool value) {
    _isChecked = value;
    notifyListeners();
  }
}
