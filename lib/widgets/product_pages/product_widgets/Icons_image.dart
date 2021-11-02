import 'package:flutter/material.dart';
import 'package:tak_size/Screen/bottom_appbar.dart';
import 'package:tak_size/data/my_flutter_app_icons.dart';

class IconsImage extends StatelessWidget {
  IconsImage(this.top, this.icon, {this.right, this.left});
  double top;
  var left;
  var right;
  IconData icon;

  @override
  Widget build(BuildContext context) {
    return Positioned(
        top: top,
        left: left,
        right: right,
        child: Container(
          height: 40,
          width: 40,
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.all(Radius.circular(30))),
          child: InkWell(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => bottomAppBar(),
                ),
              );
            },
            child: Padding(
              padding: const EdgeInsets.all(2),
              child: Icon(
                icon,
                size: 30,
                color: Colors.grey,
              ),
            ),
          ),
        ));
  }
}
