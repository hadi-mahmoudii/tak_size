import 'package:flutter/material.dart';

class BrandButtom extends StatelessWidget {
  BrandButtom(this.text);
  String text;

  @override
  Widget build(BuildContext context) {
    return Container(
      // height: MediaQuery.of(context).size.height * 0.1,
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 0, right: 0),
            child: Row(
              textDirection: TextDirection.rtl,
              children: [
                Container(
                  height: 35,
                  width: 120,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(
                        color: Color(0xFFCFD8DC),
                      ),
                      borderRadius: BorderRadius.all(Radius.circular(6))),
                  child: ElevatedButton(
                    onPressed: () {},
                    child: Text(
                      text,
                      style: TextStyle(
                          fontFamily: 'yekan',
                          color: Colors.grey[600],
                          fontSize: 20),
                    ),
                    style: ElevatedButton.styleFrom(
                        primary: Colors.white, elevation: 0),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}

class followbuttom extends StatelessWidget {
  followbuttom(this.index, this.buttomcolor);
  int index;
  var buttomcolor;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 20),
      decoration: BoxDecoration(
        border: Border.all(
            color: buttomcolor[index] ? Color(0xFFCFD8DC) : Color(0xFF1DE9B6)),
        borderRadius: BorderRadius.all(Radius.circular(6)),
      ),
      height: 35,
      width: MediaQuery.of(context).size.width * 0.93,
      child: ElevatedButton(
        onPressed: () {},
        child: Row(
          textDirection: TextDirection.rtl,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: Text(
                buttomcolor[index] ? "دنبال می کنید" : "دنبال کردن",
                style: TextStyle(
                    fontFamily: 'yekan',
                    color: buttomcolor[index] ? Colors.grey[600] : Colors.white,
                    fontSize: 18),
              ),
            ),
            Icon(
              Icons.keyboard_arrow_down_outlined,
              color: buttomcolor[index] ? Colors.grey : Colors.white,
            ),
          ],
        ),
        style: ElevatedButton.styleFrom(
          primary: buttomcolor[index] ? Colors.white : Color(0xFF1DE9B6),
          elevation: 0,
        ),
      ),
    );
  }
}
