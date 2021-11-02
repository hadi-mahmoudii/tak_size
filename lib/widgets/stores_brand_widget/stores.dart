import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tak_size/widgets/stores_brand_widget/brand_stores.dart';
import 'package:tak_size/widgets/stores_brand_widget/brandshow.dart';
import 'package:tak_size/widgets/stores_brand_widget/search.dart';

class Stores extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        height: MediaQuery.of(context).size.height,
        child: Column(
          textDirection: TextDirection.rtl,
          crossAxisAlignment: CrossAxisAlignment.end,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Brandsearch(),
            ListView.builder(
                shrinkWrap: true,
                physics: ScrollPhysics(),
                scrollDirection: Axis.vertical,
                itemCount: liststores.length,
                itemBuilder: (
                  BuildContext context,
                  int index,
                ) {
                  return Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: Brandshow(
                        liststores[index]['image'],
                        liststores[index]['subtitle'],
                        liststores[index]['name'],
                        index),
                  );
                }),
          ],
        ),
      ),
    );
  }
}
