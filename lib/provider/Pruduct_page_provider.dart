import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ProductProvider with ChangeNotifier {
  Color color = Colors.white.withOpacity(0.0);
  Future<void> likecolor() async {
    color = await Colors.red;
    notifyListeners();
  }
}
