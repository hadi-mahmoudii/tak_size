import 'package:flutter/material.dart';

class divider extends StatelessWidget {
  const divider({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Divider(
      thickness: 1,
      color: Colors.grey[200],
      endIndent: 0,
    );
  }
}