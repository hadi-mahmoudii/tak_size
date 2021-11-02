import 'package:flutter/material.dart';
import 'package:tak_size/widgets/stores_brand_widget/brand_tabbar.dart';

class Brand extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.white,
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 60),
              child: brandTabbar(context),
            ),
          ],
        ),
      ),
    );
  }
}
