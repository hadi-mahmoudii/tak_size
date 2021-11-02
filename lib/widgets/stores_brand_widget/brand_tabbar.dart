import 'package:flutter/material.dart';
import 'package:tak_size/widgets/stores_brand_widget/stores.dart';

import 'favirote.dart/favirote_post.dart';

Widget brandTabbar(BuildContext context) {
  return Container(
    child: DefaultTabController(
      length: 2,
      child: Wrap(
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Container(
                decoration: BoxDecoration(
                    border: Border(
                        bottom:
                            BorderSide(color: Color(0xFFD6D6D6), width: 1.0))),
                // Tabbar
                child: TabBar(
                    unselectedLabelColor: Colors.grey,
                    unselectedLabelStyle: TextStyle(
                      fontSize: 17,
                      color: Colors.grey,
                      fontFamily: 'yekan',
                    ),
                    labelColor: Colors.greenAccent,
                    labelStyle: TextStyle(
                      fontSize: 17,
                      color: Colors.grey,
                      fontFamily: 'yekan',
                    ),
                    indicatorColor: Colors.blue,
                    indicator: UnderlineTabIndicator(
                        borderSide:
                            BorderSide(color: Colors.greenAccent, width: 3.0),
                        insets: EdgeInsets.symmetric(horizontal: 0)),

                    // overlayColor: Colors.green,
                    tabs: [
                      Tab(
                        text: 'فروشگاه های مورد علاقه',
                      ),
                      Tab(
                        text: "آگهی های مورد علاقه",
                      ),
                    ]),
              ),
              // SizedBox(
              //   height: 10,
              // ),
              Container(
                color: Colors.white,
                //Add this to give height
                height: MediaQuery.of(context).size.height - 178,
                width: MediaQuery.of(context).size.width,
                child: TabBarView(children: [
                  Container(
                    child: Stores(),
                  ),
                  Container(
                    child: Favirotepost(),
                  ),
                ]),
              ),
            ],
          ),
        ],
      ),
    ),
  );
}
