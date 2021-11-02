import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tak_size/provider/expaltion_provider.dart';

class Explation extends StatelessWidget {
  const Explation({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final visibleprovider = Provider.of<InformationProvider>(context);
    bool visible = visibleprovider.visible;
    return Column(
      children: [
        InkWell(
          onTap: () {
            visibleprovider.explationvisible();
          },
          child: Row(
            textDirection: TextDirection.rtl,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                'اطلاعات فروشگاه ',
                style: TextStyle(
                  fontFamily: 'yekan',
                  fontSize: 17,
                ),
              ),
              Icon(
                visible == true
                    ? Icons.keyboard_arrow_down
                    : Icons.keyboard_arrow_up,
                size: 32,
              )
            ],
          ),
        ),
        Visibility(
            visible: visible,
            child: Container(
              margin: EdgeInsets.only(top: 10),
              height: 50,
              width: double.infinity,
              child: Text(
                'تیشرت آستین بلند ',
                style: TextStyle(
                    color: Colors.grey[500], fontFamily: 'yekan', fontSize: 15),
                textDirection: TextDirection.rtl,
              ),
            )),
      ],
    );
  }
}

class information extends StatelessWidget {
  const information({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final visibleprovider = Provider.of<ExplationProvider>(context);
    bool visible = visibleprovider.visible;
    return Padding(
      padding: const EdgeInsets.only(top: 10, bottom: 10),
      child: Column(
        children: [
          InkWell(
            onTap: () {
              visibleprovider.explationvisible();
            },
            child: Row(
              textDirection: TextDirection.rtl,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  'اطلاعات فروشگاه ',
                  style: TextStyle(
                    fontFamily: 'yekan',
                    fontSize: 17,
                  ),
                ),
                Icon(
                  visible == true
                      ? Icons.keyboard_arrow_down
                      : Icons.keyboard_arrow_up,
                  size: 32,
                )
              ],
            ),
          ),
          Visibility(
              visible: visible,
              child: Container(
                margin: EdgeInsets.only(top: 10),
                height: 50,
                width: double.infinity,
                child: Text(
                  'فروشگاه نیک بال ',
                  style: TextStyle(
                      color: Colors.grey[500],
                      fontFamily: 'yekan',
                      fontSize: 15),
                  textDirection: TextDirection.rtl,
                ),
              )),
        ],
      ),
    );
  }
}