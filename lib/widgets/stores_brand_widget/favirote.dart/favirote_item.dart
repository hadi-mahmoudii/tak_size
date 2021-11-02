import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:tak_size/widgets/stores_brand_widget/brand_stores.dart';

class FaviroteItem extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 15, bottom: 10),
      child: Container(
        width: MediaQuery.of(context).size.width * 0.9,
        height: MediaQuery.of(context).size.height * 0.18,
        decoration: BoxDecoration(
          border: Border.all(color: Color(0xFFCFD8DC)),
        ),
        child: Row(
          textDirection: TextDirection.rtl,
          children: [
            Padding(
              padding: const EdgeInsets.only(
                top: 20,
                bottom: 15,
                right: 20,
              ),
              child: Column(
                textDirection: TextDirection.rtl,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'تیشرت زنانه آستین کوتاه',
                    style: TextStyle(
                        fontFamily: 'yekan',
                        fontSize: 16,
                        color: Colors.grey[800],
                        fontWeight: FontWeight.bold),
                  ),
                  Spacer(),
                  Column(
                    textDirection: TextDirection.rtl,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        '۶۸۰۰۰',
                        style: TextStyle(color: Colors.grey[500], fontSize: 15),
                      ),
                      Text(
                        '۴۹۰۰۰ تومان',
                        textDirection: TextDirection.rtl,
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 16),
                      ),
                      Text(
                        'Size:s',
                        style: TextStyle(
                            fontWeight: FontWeight.normal,
                            color: Colors.grey[500]),
                      ),
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
