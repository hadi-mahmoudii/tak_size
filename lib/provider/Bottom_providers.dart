import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tak_size/Screen/Home.dart';
import 'package:tak_size/Screen/brands.dart';
import 'package:tak_size/Screen/chat.dart';
import 'package:tak_size/Screen/intrest.dart';
import 'package:tak_size/Screen/taksho.dart';

class BottomProvider with ChangeNotifier {
  int selectpageindex = 4;
  static var screen;
  Future<void> setscreen(int index) async {
    selectpageindex = index;
    print(selectpageindex);
    switch (selectpageindex) {
      case 0:
        {
          screen = Taksho();
        }
        break;
      case 1:
        {
          screen = Chat();
        }
        break;
      case 2:
        {
          screen = Brand();
        }
        break;
      case 3:
        {
          screen = Intrest();
        }
        break;
      case 4:
        {
          screen = Home();
        }
        ;
    }
    notifyListeners();
  }

  int get selectpageindexx {
    return selectpageindex;
  }

  get Screenn {
    return screen;
  }
}
