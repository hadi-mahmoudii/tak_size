import 'package:flutter/material.dart';

class ProductItems extends StatelessWidget {
  ProductItems(
      this.firstext, this.secondtext, this.linethrough, this.colorr, this.bold);
  String firstext;
  String secondtext;
  bool linethrough;
  bool colorr;
  bool bold;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        top: 10,
        bottom: 10,
      ),
      child: Row(
        textDirection: TextDirection.rtl,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Text(
            ":$firstext",
            style: TextStyle(
              fontFamily: 'yekan',
              fontSize: 17,
            ),
          ),
          SizedBox(
            width: 1,
          ),
          Text(
            secondtext,
            textDirection: TextDirection.rtl,
            style: TextStyle(
                fontWeight: bold ? FontWeight.bold : FontWeight.normal,
                fontFamily: 'yekan',
                fontSize: 17,
                color: colorr ? Colors.red : Colors.grey[500],
                decoration: linethrough
                    ? TextDecoration.lineThrough
                    : TextDecoration.none),
          )
        ],
      ),
    );
  }
}
