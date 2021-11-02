import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:tak_size/Screen/bottom_appbar.dart';
import 'package:tak_size/Screen/brands.dart';
import 'package:tak_size/data/brands_detail.dart';
import 'package:tak_size/widgets/brands/brand_info.dart';
import 'package:tak_size/widgets/brands/buttom.dart';
import 'package:tak_size/widgets/product_pages/Pruduct_home.dart';
import 'package:tak_size/widgets/product_pages/product_widgets/divider.dart';
import 'package:tak_size/widgets/stores_brand_widget/brand_stores.dart';
import 'package:tak_size/widgets/stores_brand_widget/brand_tabbar.dart';
import 'package:tak_size/widgets/stores_brand_widget/stores.dart';

class Brandmain extends StatelessWidget {
  Brandmain(this.index, this.buttomfollow);
  int index;
  var buttomfollow;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          automaticallyImplyLeading: false, // hides leading widget

          elevation: 0,
          backgroundColor: Colors.white,
          actions: [
            IconButton(
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => bottomAppBar(),
                  ),
                );
              },
              icon: Icon(Icons.keyboard_arrow_right),
              color: Colors.black,
              iconSize: 35,
            ),
          ],
          leading: Icon(
            Icons.more_horiz_outlined,
            color: Colors.black,
          ),
          centerTitle: true,
          title: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            textDirection: TextDirection.rtl,
            children: [
              Text(
                liststores[index]['name'],
                style: TextStyle(
                    fontFamily: 'yekan', fontSize: 18, color: Colors.black),
              ),
              Icon(
                Icons.check_circle_sharp,
                color: Colors.greenAccent,
                size: 16,
              ),
              Text(
                'شعبه تهران',
                style: TextStyle(
                    color: Colors.grey[300], fontFamily: 'yekan', fontSize: 15),
              )
            ],
          ),
        ),
        body: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          child: SingleChildScrollView(
            child: Column(
              children: [
                BrandInfo(index),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  textDirection: TextDirection.rtl,
                  children: [
                    BrandButtom('تماس'),
                    BrandButtom('پیامک'),
                    BrandButtom('چت'),
                  ],
                ),
                followbuttom(index, buttomfollow),
                SizedBox(
                  height: 40,
                ),
                Text(
                  'آگهی های فعال',
                  style: TextStyle(
                      color: Colors.grey[600],
                      fontFamily: 'yekan',
                      fontSize: 15),
                ),
                divider(),
                SizedBox(
                  height: 20,
                ),
                Padding(
                  padding:
                      const EdgeInsets.only(left: 10, right: 10, bottom: 50),
                  child: GridView.count(
                      shrinkWrap: true,
                      physics: ScrollPhysics(),
                      crossAxisCount: 2,
                      childAspectRatio: 0.65,
                      mainAxisSpacing: 10,
                      crossAxisSpacing: 10,
                      children: List.generate(
                        adidasproducts.length,
                        (index) =>
                            Product(adidasproducts[index]["productasset"]),
                      )),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
