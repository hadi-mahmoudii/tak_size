import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tak_size/widgets/gender_product/children_home.dart';
import 'package:tak_size/widgets/gender_product/female_home.dart';
import 'package:tak_size/widgets/gender_product/men_home.dart';

class Home extends StatelessWidget {
  Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.white,
          centerTitle: true,
          title: Padding(
            padding: const EdgeInsets.only(top: 10),
            child: RichText(
              text: TextSpan(
                  text: ' تک',
                  style: TextStyle(
                      fontFamily: 'yekan', fontSize: 30, color: Colors.red),
                  children: <TextSpan>[
                    TextSpan(
                        text: ' سایز',
                        style: TextStyle(
                            fontFamily: 'yekan',
                            fontSize: 30,
                            color: Colors.grey))
                  ]),
            ),
          ),
        ),
        body: SingleChildScrollView(
          // scrollDirection: Axis.vertical,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 15, right: 15, top: 15),
                child: Container(
                    width: MediaQuery.of(context).size.width,
                    height: 50,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(30)),
                      color: Colors.grey[100],
                    ),
                    //search Text field

                    child: Padding(
                      padding: const EdgeInsets.only(left: 5, right: 5),
                      child: TextFormField(
                        decoration: InputDecoration(
                            hintTextDirection: TextDirection.rtl,
                            border: InputBorder.none,
                            focusedBorder: InputBorder.none,
                            enabledBorder: InputBorder.none,
                            errorBorder: InputBorder.none,
                            disabledBorder: InputBorder.none,
                            // contentPadding: EdgeInsets.only(left: 8, right: 8),
                            prefixIcon: Icon(Icons.location_on,
                                size: 40, color: Colors.lightGreen),
                            suffixIcon: Icon(
                              Icons.search_sharp,
                              color: Colors.grey[500],
                              size: 35,
                            ),
                            hintText: 'جستجو در پوشاک،کفش و کیف..',
                            hintStyle: TextStyle(
                                fontFamily: 'yekan', color: Colors.grey[400])),
                      ),
                    )),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 7),
                child: _tabSection(context),
              ),
            ],
          ),
        ));
  }
}

Widget _tabSection(BuildContext context) {
  return DefaultTabController(
    length: 3,
    child: Wrap(
      children: [
        Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Container(
              decoration: BoxDecoration(
                  border: Border(
                      bottom:
                          BorderSide(color: Color(0xFFD6D6D6), width: 1.0))),
              // Tabbar
              child: Padding(
                padding: const EdgeInsets.only(left: 30, right: 30),
                child: TabBar(
                    unselectedLabelColor: Colors.grey,
                    unselectedLabelStyle: TextStyle(
                      fontSize: 18,
                      color: Colors.grey,
                      fontFamily: 'yekan',
                    ),
                    labelColor: Colors.grey[700],
                    labelStyle: TextStyle(
                      fontSize: 18,
                      color: Colors.grey,
                      fontFamily: 'yekan',
                    ),
                    indicatorColor: Colors.blue,
                    indicator: UnderlineTabIndicator(
                        borderSide:
                            BorderSide(color: Color(0xFF1DE9B6), width: 3.0),
                        insets: EdgeInsets.symmetric(
                          horizontal: 30,
                        )),

                    // overlayColor: Colors.green,
                    tabs: [
                      Tab(
                        text: 'بچه گانه',
                      ),
                      Tab(
                        text: 'مردانه',
                      ),
                      Tab(
                        text: 'زنانه',
                      ),
                    ]),
              ),
            ),
            // SizedBox(
            //   height: 10,
            // ),
            Container(
              //Add this to give height
              height: MediaQuery.of(context).size.height - 250,
              width: MediaQuery.of(context).size.width,
              child: TabBarView(children: [
                Container(
                  child: ChildrenHome(),
                ),
                Container(
                  child: MenProductHome(),
                ),
                Container(
                  child: WomanProductHome(),
                ),
              ]),
            ),
          ],
        ),
      ],
    ),
  );
}
