import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:tak_size/data/my_flutter_app_icons.dart';
import 'package:tak_size/widgets/product_pages/product_widgets/divider.dart';

class Customers extends StatelessWidget {
  Customers(this.officialbrand, this.sellername, this.addres, this.zemanat,
      this.ersal, this.marjoo, this.pardakht, this.taviz);
  bool officialbrand = false;
  String sellername;
  String addres;

  bool zemanat = false;
  bool taviz = false;
  bool marjoo = false;
  bool ersal = false;
  bool pardakht = false;

  @override
  Widget build(BuildContext context) {
    return Sizer(builder: (context, orientation, deviceType) {
      return Container(
          width: MediaQuery.of(context).size.width,
          margin: EdgeInsets.only(top: 15),
          child: Column(
            textDirection: TextDirection.rtl,
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                textDirection: TextDirection.rtl,
                children: [
                  Text(
                    'فروش توسط نیک بال ',
                    style: TextStyle(
                        fontFamily: 'yekan',
                        color: Colors.grey[600],
                        fontSize: 13),
                  ),
                  Icon(
                    officialbrand
                        ? Icons.check_circle_rounded
                        : Icons.highlight_off,
                    color:
                        officialbrand ? Colors.greenAccent[400] : Colors.grey,
                    size: 17,
                  ),
                  Text(
                    officialbrand ? "فروشنده رسمی برند" : "فروشنده غیر رسمی",
                    style: TextStyle(
                      fontSize: 13,
                      color: officialbrand ? Colors.greenAccent : Colors.grey,
                      fontFamily: 'yekan',
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 80),
                child: Text(
                  'نام و نام خاتوادگی فروشنده: $sellername \n نشانی فروشگاه: $addres',
                  style: TextStyle(
                    fontFamily: "yekan",
                    fontSize: 12,
                    color: Colors.grey[600],
                    height: 2,
                  ),
                  textDirection: TextDirection.rtl,
                  maxLines: 3,
                ),
              ),
              divider(),
              SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 60),
                child: Column(
                  textDirection: TextDirection.rtl,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      textDirection: TextDirection.rtl,
                      children: [
                        Customersdetail(
                            'ضمانت اصل بودن', MyFlutterApp.medal, zemanat),
                        Customersdetail('تعویض', MyFlutterApp.circul, taviz),
                        Customersdetail(
                          'مرجوعی',
                          MyFlutterApp.path_976,
                          marjoo,
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 13),
                      child: Row(
                        textDirection: TextDirection.rtl,
                        children: [
                          Customersdetail(
                              'ارسال رایگان', MyFlutterApp.car, ersal),
                          Padding(
                            padding: EdgeInsets.only(right: 16.5.w),
                            child: Customersdetail('پرداخت درمحل',
                                MyFlutterApp.group_296, pardakht),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                  ],
                ),
              ),
              divider(),
              Text(
                "تک سایز نسبت به تعهدات تیک خورده هیچ مسولیتی ندارد",
                style: TextStyle(
                  fontSize: 12,
                  fontFamily: 'yekan',
                  color: Colors.grey[600],
                ),
                textAlign: TextAlign.right,
              ),
              SizedBox(
                height: 28,
              ),
            ],
          ));
    });
  }
}

class Customersdetail extends StatelessWidget {
  Customersdetail(this.title, this.icon, this.property);
  String title;
  IconData icon;
  bool property;
  @override
  Widget build(BuildContext context) {
    return Row(
      textDirection: TextDirection.rtl,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 5),
          child: Icon(
            Icons.check,
            color: property ? Colors.greenAccent[400] : Colors.white,
            size: 16,
          ),
        ),
        Icon(
          icon,
          size: 14,
          color: Colors.grey[600],
        ),
        Padding(
          padding: const EdgeInsets.only(right: 10),
          child: Text(
            title,
            style: TextStyle(
              fontSize: 11,
              fontFamily: 'yekan',
              color: Colors.grey[500],
            ),
          ),
        ),
      ],
    );
  }
}
