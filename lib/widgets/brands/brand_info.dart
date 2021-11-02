import 'package:flutter/material.dart';
import 'package:tak_size/widgets/stores_brand_widget/brand_stores.dart';

class BrandInfo extends StatelessWidget {
  BrandInfo(this.index);
  int index;
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height * 0.35,
      child: Padding(
        padding: const EdgeInsets.only(right: 45, top: 30),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          textDirection: TextDirection.rtl,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 30),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    '1300',
                    style: TextStyle(
                        fontFamily: 'yekan',
                        fontSize: 20,
                        color: Colors.grey[700],
                        fontWeight: FontWeight.w800),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    'دنبال کننده',
                    style: TextStyle(
                        fontFamily: 'yekan',
                        fontSize: 15,
                        color: Colors.grey[500]),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                right: 40,
                top: 30,
              ),
              child: Column(
                textDirection: TextDirection.rtl,
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    '34',
                    style: TextStyle(
                        fontFamily: 'yekan',
                        fontSize: 20,
                        color: Colors.grey[700],
                        fontWeight: FontWeight.w800),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    'آگهی ',
                    style: TextStyle(
                        fontFamily: 'yekan',
                        fontSize: 15,
                        color: Colors.grey[500]),
                  )
                ],
              ),
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width * 0.22,
            ),
            Column(
              textDirection: TextDirection.ltr,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CircleAvatar(
                  radius: 55,
                  backgroundImage: AssetImage(liststores[index]['image']),
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  'پوشاک تعطیلات',
                  style: TextStyle(
                      fontFamily: 'yekan',
                      color: Colors.black,
                      fontSize: 12,
                      fontWeight: FontWeight.w600),
                ),
                SizedBox(
                  height: 2,
                ),
                Text(
                  'Everyone wish for Holiday',
                  style: TextStyle(
                      fontFamily: 'yekan',
                      color: Colors.grey[500],
                      fontSize: 10),
                ),
                SizedBox(
                  height: 2,
                ),
                Text(
                  'Madi in Iran ',
                  style: TextStyle(
                      fontFamily: 'yekan',
                      color: Colors.grey[500],
                      fontSize: 10),
                ),
                SizedBox(
                  height: 3,
                ),
                Text(
                  'ثبت سفارش از طریق دایرکت',
                  style: TextStyle(
                      fontFamily: 'yekan',
                      color: Colors.black,
                      fontSize: 12,
                      fontWeight: FontWeight.w600),
                ),
                SizedBox(
                  height: 2,
                ),
                Text(
                  'zil.ink/holiday ',
                  style: TextStyle(
                      fontFamily: 'yekan',
                      color: Colors.grey[500],
                      fontSize: 10),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
