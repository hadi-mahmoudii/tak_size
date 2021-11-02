import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tak_size/provider/brand_follow.dart';
import 'package:tak_size/widgets/brands/main_brand_page.dart';

class Brandshow extends StatelessWidget {
  Brandshow(this.image, this.subtitle, this.name, this.index);
  String image;
  String name;
  String subtitle;
  int index;

  @override
  Widget build(BuildContext context) {
    final brandprovider = Provider.of<Brandprovider>(context);
    var buttoncolor = brandprovider.follow;

    return InkWell(
      onTap: () => Navigator.push(
          context,
          MaterialPageRoute(
              builder: (context) => Brandmain(index, buttoncolor))),
      child: Container(
        margin: EdgeInsets.only(top: 0, bottom: 10),
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height * 0.11,
        color: Colors.white,
        child: Padding(
          padding: const EdgeInsets.only(
            right: 15,
          ),
          child: Row(
            textDirection: TextDirection.rtl,
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                width: 80,
                //
                child: Center(
                  child: CircleAvatar(
                    radius: 33,
                    backgroundImage: AssetImage(image),

                    // child: ClipRRect(
                    //   borderRadius: BorderRadius.all(Radius.circular(70)),
                    //   child: Image.asset(
                    //     image,
                    //     fit: BoxFit.fill,
                    //   ),
                    // )
                  ),
                ),
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.white,
                    border: Border.all(color: Colors.greenAccent)),
              ),
              SizedBox(
                width: 17,
              ),
              Column(
                textDirection: TextDirection.rtl,
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    name,
                    style: TextStyle(
                        fontFamily: 'yekan', fontSize: 14, color: Colors.black),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(subtitle,
                      style: TextStyle(
                          fontFamily: 'yekan',
                          fontSize: 12,
                          color: Colors.grey[400])),
                ],
              ),
              Spacer(),
              Row(
                textDirection: TextDirection.ltr,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    margin: EdgeInsets.only(left: 0),
                    width: 115,
                    height: 30,
                    decoration: BoxDecoration(
                        color: buttoncolor[index] == true
                            ? Colors.white
                            : Colors.greenAccent,
                        borderRadius: BorderRadius.all(Radius.circular(5)),
                        border: Border.all(
                            color: buttoncolor[index]
                                ? Color(0xFFCFD8DC)
                                : Colors.white)),
                    child: InkWell(
                      onTap: () {
                        brandprovider.followbrand(index);
                        print(index);
                        print(buttoncolor);
                      },
                      child: Center(
                        child: Text(
                          buttoncolor[index] == true
                              ? 'دنبال می کنید'
                              : 'دنبال کنید',
                          style: TextStyle(
                              color: buttoncolor[index] == true
                                  ? Colors.grey
                                  : Colors.white,
                              fontFamily: 'yekan',
                              fontSize: 15),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
