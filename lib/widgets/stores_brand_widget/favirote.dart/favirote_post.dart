import 'package:flutter/cupertino.dart';
import 'package:tak_size/widgets/stores_brand_widget/favirote.dart/favirote_item.dart';
import 'package:tak_size/widgets/stores_brand_widget/search.dart';

class Favirotepost extends StatelessWidget {
  const Favirotepost({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        child: Column(
      children: [
        Brandsearch(),
        FaviroteItem(),
      ],
    ));
  }
}
