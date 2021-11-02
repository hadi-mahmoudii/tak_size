import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Brandsearch extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: const EdgeInsets.only(left: 15, right: 15, top: 15),
        child: Container(
            width: MediaQuery.of(context).size.width,
            height: 50,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(30)),
              color: Colors.grey[300],
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

                  suffixIcon: Icon(
                    Icons.search_sharp,
                    color: Colors.grey[500],
                    size: 35,
                  ),
                ),
              ),
            )),
      ),
    );
  }
}
