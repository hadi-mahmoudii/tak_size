import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tak_size/Screen/Home.dart';
import 'package:tak_size/data/my_icons_icons.dart';
import 'package:tak_size/provider/Bottom_providers.dart';

class bottomAppBar extends StatelessWidget {
  int _selectindex = 4;
  var screen;
  @override
  Widget build(BuildContext context) {
    final indexprovide = Provider.of<BottomProvider>(context);
    _selectindex = indexprovide.selectpageindexx;
    screen = indexprovide.Screenn;
    return Scaffold(
      body: screen != null ? screen : Home(),

      //bottom app bar
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        onTap: (int index) {
          indexprovide.setscreen(index);
        },
        currentIndex: _selectindex != null ? _selectindex : 4,
        unselectedItemColor: Colors.grey,
        selectedItemColor: Colors.green,
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(
              MyIcons.Person,
              size: 30,
            ),
            title: Center(
              child: Padding(
                padding: const EdgeInsets.only(top: 5),
                child: Text(
                  'تک شو',
                  style: TextStyle(fontFamily: 'yekan', fontSize: 17),
                ),
              ),
            ),
          ),
          BottomNavigationBarItem(
            icon: Icon(
              MyIcons.path_11775,
              size: 30,
            ),
            title: Center(
              child: Padding(
                padding: const EdgeInsets.only(top: 5, right: 5),
                child: Text(
                  'چت',
                  style: TextStyle(fontFamily: 'yekan', fontSize: 17),
                ),
              ),
            ),
          ),
          BottomNavigationBarItem(
            icon: Icon(
              MyIcons.path_11007,
              size: 30,
            ),
            title: Center(
              child: Padding(
                padding: const EdgeInsets.only(top: 5, left: 5),
                child: Text(
                  'برندها',
                  style: TextStyle(fontFamily: 'yekan', fontSize: 17),
                ),
              ),
            ),
          ),
          BottomNavigationBarItem(
            icon: Icon(
              MyIcons.heart_empty,
              size: 30,
            ),
            title: Center(
              child: Padding(
                padding: const EdgeInsets.only(top: 5),
                child: Text(
                  'علاقمندی',
                  style: TextStyle(fontFamily: 'yekan', fontSize: 17),
                ),
              ),
            ),
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
              size: 30,
            ),
            title: Center(
              child: Padding(
                padding: const EdgeInsets.only(top: 5),
                child: Text(
                  'خانه',
                  style: TextStyle(fontFamily: 'yekan', fontSize: 17),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
