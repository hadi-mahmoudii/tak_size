import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:badges/badges.dart';
import 'package:provider/provider.dart';
import 'package:tak_size/provider/Pruduct_page_provider.dart';
import 'package:tak_size/data/pic_product.dart';
import 'package:tak_size/widgets/product_pages/Pruduct_home.dart';
// import 'package:tak_size/widgets/Pruduct_home.dart';

class MenProductHome extends StatelessWidget {
  List<dynamic> categories = [
    {
      'categoryName': 'تیشرت',
      'assetscategory': 'assets/men_Icon/ti.png',
    },
    {
      'categoryName': 'زمستانه',
      'assetscategory': 'assets/men_Icon/zem.png',
    },
    {
      'categoryName': 'کفش',
      'assetscategory': 'assets/men_Icon/shoes.png',
    },
    {
      'categoryName': 'شلوار',
      'assetscategory': 'assets/men_Icon/shal.png',
    },
    {
      'categoryName': 'پیراهن',
      'assetscategory': 'assets/men_Icon/pi.png',
    },
    {
      'categoryName': 'کت و شلوار',
      'assetscategory': 'assets/men_Icon/cotsh.png',
    },
    {
      'categoryName': 'کت',
      'assetscategory': 'assets/men_Icon/cot.png',
    },
    {
      'categoryName': 'کیف',
      'assetscategory': 'assets/men_Icon/bag.png',
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
                padding: const EdgeInsets.only(top: 0, left: 7),
                child: Container(
                  height: MediaQuery.of(context).size.height * 0.15,
                  child: ListView.builder(
                      shrinkWrap: true,
                      scrollDirection: Axis.horizontal,
                      itemCount: categories.length,
                      itemBuilder: (BuildContext context, int index) {
                        return CategoryMen(
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
                    children: List.generate(menpic.length,
                        (index) => Product(menpic[index]['assets'])
                        
                        
                        
                        
                        )
                        ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

// Category swipper
class CategoryMen extends StatelessWidget {
  CategoryMen(BuildContext context, this.assets, this.name);
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
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                      fontFamily: 'yekan',
                      fontSize: 15,
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

// woman product
// ignore: must_be_immutable
