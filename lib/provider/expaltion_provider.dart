import 'package:flutter/material.dart';

class ExplationProvider with ChangeNotifier {
  bool visible = false;
  Future<void> explationvisible() async {
    visible = !visible;
    
    notifyListeners();
  }
}

class InformationProvider with ChangeNotifier {
  bool visible = false;
  Future<void> explationvisible() async {
    visible = !visible;
    notifyListeners();
  }
}
