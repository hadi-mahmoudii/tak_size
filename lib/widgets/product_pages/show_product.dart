import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sizer/sizer.dart';
import 'package:tak_size/Screen/bottom_appbar.dart';
import 'package:tak_size/data/brands_detail.dart';
import 'package:tak_size/data/my_flutter_app_icons.dart';
import 'package:tak_size/provider/expaltion_provider.dart';
import 'package:tak_size/widgets/product_pages/Pruduct_home.dart';

import 'package:tak_size/widgets/product_pages/product_widgets/Explation_information.dart';
import 'package:tak_size/widgets/product_pages/product_widgets/ICONS_image.dart';
import 'package:tak_size/widgets/product_pages/product_widgets/customers.dart';
import 'package:tak_size/widgets/product_pages/product_widgets/divider.dart';
import 'package:tak_size/widgets/product_pages/product_widgets/other_product.dart';
import 'package:tak_size/widgets/product_pages/product_widgets/product_detail.dart';
// import 'package:tak_size/widgets/Pruduct_home.dart';
// import 'package:tak_size/widgets/show_product_widget.dart';

class ShowProduct extends StatelessWidget {
  String asset;
  ShowProduct(this.asset);
  bool visible = false;

  @override
  Widget build(BuildContext context) {
    return Sizer(builder: (context, orientation, deviceType) {
      return Scaffold(
        body: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Stack(
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width,
                    height: MediaQuery.of(context).size.height * 0.6,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage(asset), fit: BoxFit.cover)),
                    child: Stack(
                      alignment: Alignment.bottomCenter,
                      children: [
                        Container(
                          height: 35,
                          decoration: BoxDecoration(
                              border:
                                  Border.all(width: 2.0, color: Colors.white),
                              color: Colors.white,
                              borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(40),
                                  topRight: Radius.circular(40))),
                        ),
                        IconsImage(
                          50,
                          Icons.keyboard_arrow_right_outlined,
                          right: 15.0,
                        ),
                        IconsImage(
                          50,
                          ICons1.share,
                          left: 15.0,
                        ),
                        IconsImage(
                          50,
                          ICons1.favirote,
                          left: 65.0,
                        ),
                        IconsImage(
                          50,
                          ICons1.tajob,
                          left: 115.0,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              Container(
                // height: MediaQuery.of(context).size.height,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(width: 0.0, color: Colors.white)),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(right: 30),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        textDirection: TextDirection.rtl,
                        children: [
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            "تیشرت آستین بلند",
                            style: TextStyle(
                                fontSize: 20,
                                fontFamily: 'yekan',
                                fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            height: 15,
                          ),
                          Row(
                            textDirection: TextDirection.rtl,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Icon(
                                ICons.group_2262,
                                size: 15,
                                color: Colors.grey,
                              ),
                              SizedBox(
                                width: 3,
                              ),
                              Text(
                                'کد آگهی: ۲۳۴۵۶',
                                style: TextStyle(
                                    fontFamily: 'yekan',
                                    color: Colors.grey[600]),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 15,
                          ),
                          divider(),
                          Padding(
                            padding: const EdgeInsets.only(right: 12),
                            child: ProductItems(
                                'قیمت اصلی', '۶۸۰۰۰ ', true, false, false),
                          ),
                          divider(),
                          ProductItems(
                              'قیمت تک سایز', '49000 تومان', false, true, true),
                          divider(),
                          ProductItems(' سایز', 'XL  ', false, false, false),
                          divider(),
                          Padding(
                            padding: const EdgeInsets.only(right: 12),
                            child: ProductItems(
                                ' رنگ', 'سفید', false, false, false),
                          ),
                          SizedBox(
                            height: 30,
                          ),
                        ],
                      ),
                    ),
                    Container(
                      color: Colors.grey[200],
                      width: MediaQuery.of(context).size.width,
                      height: MediaQuery.of(context).size.height * 0.07,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 30, top: 20),
                      child: Column(
                        children: [
                          Padding(
                              padding:
                                  const EdgeInsets.only(top: 10, bottom: 10),
                              child: Explation()),
                          divider(),
                          information(),
                          divider(),
                          SizedBox(
                            height: 20,
                          ),
                          Container(
                            alignment: Alignment.centerRight,
                            child: CircleAvatar(
                                radius: 30,
                                child: ClipRRect(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(70)),
                                  child: Image.asset(
                                    'assets/adidas/adidas.png',
                                    fit: BoxFit.scaleDown,
                                  ),
                                )),
                          ),
                          Customers(
                              brands[0]["officalbrand"],
                              brands[0]["sellername"],
                              brands[0]["address"],
                              brands[0]["zemanat"],
                              brands[0]['ersal'],
                              brands[0]["marjoo"],
                              brands[0]["pardakht"],
                              brands[0]["taviz"]),
                        ],
                      ),
                    ),
                    Container(
                      color: Colors.grey[200],
                      width: MediaQuery.of(context).size.width,
                      height: MediaQuery.of(context).size.height * 0.12,
                    ),
                    SizedBox(
                      height: 35,
                    ),
                    Center(
                      child: Text(
                        "محصولات دیگر این فروشگاه",
                        style: TextStyle(
                          color: Colors.grey[500],
                          fontFamily: 'yekan',
                          fontSize: 15,
                        ),
                      ),
                    ),
                    divider(),
                    Padding(
                      padding: const EdgeInsets.only(left: 15, right: 15),
                      child: GridView.count(
                          crossAxisCount: 2,
                          mainAxisSpacing: 0,
                          crossAxisSpacing: 0,
                          childAspectRatio: 0.64,
                          shrinkWrap: true,
                          physics: ScrollPhysics(),
                          children: List.generate(
                            adidasproducts.length,
                            (index) => otherproduct(
                                adidasproducts[index]!["productasset"]),
                          )),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      );
    });
  }
}
