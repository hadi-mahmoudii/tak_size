import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:badges/badges.dart';
import 'package:tak_size/data/pic_product.dart';
import 'package:tak_size/widgets/product_pages/Pruduct_home.dart';
// import 'package:tak_size/widgets/Pruduct_home.dart';

class WomanProductHome extends StatelessWidget {
  List<dynamic> categories = [
    {
      'categoryName': 'تیشرت',
      'assetscategory': 'assets/female/female_product/ti.png',
    },
    {
      'categoryName': 'دامن',
      'assetscategory': 'assets/female/female_product/da.png',
    },
    {
      'categoryName': 'زمستانه',
      'assetscategory': 'assets/female/female_product/zem.png',
    },
    {
      'categoryName': 'بزرگ',
      'assetscategory': 'assets/female/female_product/bozorg.png',
    },
    {
      'categoryName': 'شال',
      'assetscategory': 'assets/female/female_product/shal.png',
    },
    {
      'categoryName': 'شلوار',
      'assetscategory': 'assets/female/female_product/shalvar.png',
    },
    {
      'categoryName': 'شومیز',
      'assetscategory': 'assets/female/female_product/shomiz.png',
    },
    {
      'categoryName': 'کفش',
      'assetscategory': 'assets/female/female_product/shoes.png',
    },
    {
      'categoryName': 'کیف',
      'assetscategory': 'assets/female/female_product/bag.png',
    },
    {
      'categoryName': 'مانتو',
      'assetscategory': 'assets/female/female_product/manto.png',
    },
  ];

  // #00c397

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        height: MediaQuery.of(context).size.height,
        child: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 0, left: 0),
                child: Container(
                  height: MediaQuery.of(context).size.height * 0.15,
                  child: ListView.builder(
                      shrinkWrap: true,
                      scrollDirection: Axis.horizontal,
                      itemCount: categories.length,
                      itemBuilder: (BuildContext context, int index) {
                        return Categorywoman(
                            context,
                            categories[index]['assetscategory'],
                            categories[index]['categoryName']);
                      }),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 10, right: 10, bottom: 50),
                child: GridView.count(
                    shrinkWrap: true,
                    physics: ScrollPhysics(),
                    crossAxisCount: 2,
                    childAspectRatio: 0.65,
                    mainAxisSpacing: 10,
                    crossAxisSpacing: 10,
                    children: List.generate(femalePic.length,
                        (index) => Product(femalePic[index]["assets"]))),
              )
            ],
          ),
        ),
      ),
    );
  }
}

// Category swipper
class Categorywoman extends StatelessWidget {
  Categorywoman(BuildContext context, this.assets, this.name);
  String assets;
  String name;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Container(
        height: 80,
        width: 80,
        child: Column(
          children: [
            Container(
              height: 65,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(50))),
              child: InkWell(
                child: ClipRRect(
                  borderRadius: BorderRadius.all(Radius.circular(50)),
                  child: Image.asset(assets),
                ),
              ),
            ),
            SizedBox(
              height: 12,
            ),
            Container(
              child: Center(
                child: Text(name,
                    style: TextStyle(
                      fontFamily: 'yekan',
                      fontSize: 16,
                      color: Colors.grey,
                      // fontWeight: FontWeight.bold
                    )),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
