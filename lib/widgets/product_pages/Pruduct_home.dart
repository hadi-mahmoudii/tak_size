import 'package:badges/badges.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sizer/sizer.dart';
import 'package:tak_size/provider/Pruduct_page_provider.dart';
import 'package:like_button/like_button.dart';
import 'package:tak_size/widgets/product_pages/show_product.dart';

class Product extends StatelessWidget {
  String assets;

  Product(this.assets);
  @override
  Widget build(BuildContext context) {
    // final likeprovider = Provider.of<ProductProvider>(context);
    // Color likecolor = likeprovider.color;
    Color likecolor = Colors.white;
    String pic;
    Future loadingassets() async {
      assets = await assets;
    }

    return Sizer(builder: (context, orientation, deviceType) {
      return InkWell(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => ShowProduct(assets),
            ),
          );
        },
        child: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          color: Colors.white,
          child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Stack(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 10, right: 10),
                      child: Container(
                          width: double.infinity - 80,
                          height: 65.h,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(15)),
                          ),
                          child: ClipRRect(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10)),
                              child: Image.asset(
                                assets,
                                fit: BoxFit.cover,
                              ))),
                    ),
                    Positioned(
                        top: 7,
                        right: 35,
                        child: LikeButton(
                          size: 15,
                          circleColor: CircleColor(
                              start: Color(0xff0099cc), end: Color(0xff0099cc)),
                          bubblesColor: BubblesColor(
                            dotPrimaryColor: Color(0xff33b5e5),
                            dotSecondaryColor: Color(0xff0099cc),
                          ),
                          likeBuilder: (bool isLiked) {
                            return Icon(
                              isLiked
                                  ? Icons.favorite
                                  : Icons.favorite_border_outlined,
                              color: isLiked ? Colors.red : Colors.grey,
                              size: 30,
                            );
                          },
                        )),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 10, top: 15),
                  child: Text(
                    'تیشرت آستبن بلند',
                    style: TextStyle(
                        color: Colors.grey, fontFamily: 'yekan', fontSize: 16),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 10, top: 5),
                  child: Row(
                    children: [
                      Text(
                        "تومان",
                        style: TextStyle(
                            fontFamily: "yekan",
                            fontSize: 16,
                            fontWeight: FontWeight.bold),
                      ),
                      Text(
                        " 12،000",
                        style: TextStyle(
                            fontFamily: "yekan",
                            fontSize: 16,
                            fontWeight: FontWeight.bold),
                      ),
                      SizedBox(width: 8),
                      Text('89،000',
                          style: TextStyle(
                              fontFamily: "yekan",
                              fontSize: 16,
                              color: Colors.grey,
                              decoration: TextDecoration.lineThrough))
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 10, top: 8),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Badge(
                          elevation: 0,
                          shape: BadgeShape.square,
                          toAnimate: true,
                          badgeColor: Colors.red,
                          badgeContent: Text("40%",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 14,
                                  fontFamily: "yekan")),
                          borderRadius: BorderRadius.all(Radius.circular(20))),
                      SizedBox(
                        width: 10,
                      ),
                      Badge(
                          borderSide: BorderSide(
                            color: Colors.grey,
                          ),
                          elevation: 0,
                          shape: BadgeShape.square,
                          toAnimate: true,
                          badgeColor: Colors.white,
                          badgeContent: Text(
                            "XL",
                            style: TextStyle(color: Colors.grey, fontSize: 10),
                          ),
                          borderRadius: BorderRadius.all(Radius.circular(7))),
                      SizedBox(
                        width: 10,
                      ),
                      Badge(
                          borderSide: BorderSide(
                            color: Colors.grey,
                          ),
                          elevation: 0,
                          shape: BadgeShape.square,
                          toAnimate: true,
                          badgeColor: Colors.white,
                          badgeContent: Text(
                            "XXL",
                            style: TextStyle(color: Colors.grey, fontSize: 10),
                          ),
                          borderRadius: BorderRadius.all(Radius.circular(7))),
                    ],
                  ),
                )
              ]),
        ),
      );
    });
  }
}
