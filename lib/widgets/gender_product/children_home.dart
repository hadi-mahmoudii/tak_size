import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:badges/badges.dart';
import 'package:tak_size/data/pic_product.dart';
import 'package:tak_size/widgets/product_pages/Pruduct_home.dart';
// import 'package:tak_size/widgets/Pruduct_home.dart';

class ChildrenHome extends StatelessWidget {
  List<dynamic> categories = [
    {
      'categoryName': 'تیشرت پسرانه',
      'assetscategory': 'assets/children/tipesar.png',
    },
    {
      'categoryName': 'تیشرت دخترانه',
      'assetscategory': 'assets/children/tidokh.png',
    },
    {
      'categoryName': 'شلوار دخترانه',
      'assetscategory': 'assets/children/shaldokh.png',
    },
    {
      'categoryName': 'پیراهن دخترانه',
      'assetscategory': 'assets/children/pi_dokh.png',
    },
    {
      'categoryName': 'زمستانه دخترانه',
      'assetscategory': 'assets/children/zemdokh.png',
    },
    {
      'categoryName': 'زمستانه پسرانه',
      'assetscategory': 'assets/children/zempesar.png',
    },
    {
      'categoryName': 'کفش دخترانه',
      'assetscategory': 'assets/children/shoesdokh.png',
    },
    {
      'categoryName': 'کفش پسرانه',
      'assetscategory': 'assets/children/shoespesar.png',
    },
    {
      'categoryName': 'شلوار پسرانه',
      'assetscategory': 'assets/children/shalpesar.png',
    },
    {
      'categoryName': 'شلوار دخترانه',
      'assetscategory': 'assets/children/shaldokh.png',
    },
    {
      'categoryName': 'کیف دخترانه',
      'assetscategory': 'assets/children/bag.png',
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
                    children: List.generate(childrenpic.length,
                        (index) => Product(childrenpic[index]["assets"]))),
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
      padding: const EdgeInsets.only(
        top: 20,
        right: 5,
        left: 5,
      ),
      child: Container(
        height: 80,
        width: 92,
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
              child: Text(
                name,
                style: TextStyle(
                  fontFamily: 'yekan',
                  fontSize: 13,
                  color: Colors.grey,
                  // fontWeight: FontWeight.bold
                ),
                textDirection: TextDirection.rtl,
                maxLines: 2,
                overflow: TextOverflow.clip,
                textAlign: TextAlign.center,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
