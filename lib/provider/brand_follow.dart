import 'package:flutter/material.dart';
import 'package:tak_size/widgets/stores_brand_widget/brand_stores.dart';

class Brandprovider with ChangeNotifier {
  
  
  List<bool> follow = List.filled(liststores.length, false);
  Future followbrand(int index) async {
    follow[index] = !follow[index];
    notifyListeners();
  }
}
