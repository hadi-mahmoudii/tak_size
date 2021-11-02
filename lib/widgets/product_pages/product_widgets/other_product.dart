import 'package:badges/badges.dart';
import 'package:flutter/material.dart';
import 'package:like_button/like_button.dart';
import 'package:tak_size/widgets/product_pages/show_product.dart';



class otherproduct extends StatelessWidget {
  String assets;
  otherproduct(this.assets);

  @override
  Widget build(BuildContext context) {
    Color likecolor = Colors.white;
    String pic;
    Future loadingassets() async {
      assets = await assets;
    }

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
        child: Padding(
          padding: const EdgeInsets.only(left: 15),
          child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Stack(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 0, right: 10),
                      child: Container(
                          width: double.infinity - 80,
                          height: 220,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(0)),
                          ),
                          child: ClipRRect(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(0)),
                              child: Image.asset(
                                assets,
                                fit: BoxFit.cover,
                              ))),
                    ),
                  ],
                ),
                Padding(
                    padding: const EdgeInsets.only(left: 0, top: 15),
                    child: Row(
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
                            borderRadius:
                                BorderRadius.all(Radius.circular(20))),
                        Padding(
                          padding: const EdgeInsets.only(left: 7),
                          child: Text('89،000',
                              style: TextStyle(
                                  fontFamily: "yekan",
                                  fontSize: 16,
                                  color: Colors.grey,
                                  decoration: TextDecoration.lineThrough)),
                        ),
                        SizedBox(
                          width: 50,
                        ),
                        LikeButton(
                          size: 30,
                          circleColor: CircleColor(
                              start: Color(0xB0BEC5), end: Color(0xB0BEC5)),
                          bubblesColor: BubblesColor(
                            dotPrimaryColor: Color(0xB0BEC5),
                            dotSecondaryColor: Color(0xB0BEC5),
                          ),
                          likeBuilder: (bool isLiked) {
                            return Icon(
                              isLiked
                                  ? Icons.favorite
                                  : Icons.favorite_border_outlined,
                              color: isLiked ? Colors.grey : Colors.grey,
                              size: 25,
                            );
                          },
                        )
                      ],
                    )),
                Padding(
                  padding: const EdgeInsets.only(left: 0, top: 5),
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
                    ],
                  ),
                ),
                SizedBox(
                  height: 3,
                ),
                Text(
                  'Size: s',
                  style: TextStyle(
                      color: Colors.grey[500],
                      fontFamily: 'yekan',
                      fontSize: 13),
                )
              ]),
        ),
      ),
    );
  }
}