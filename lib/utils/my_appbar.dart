import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'constants.dart';

AppBar myAppbar() {
  return AppBar(
      iconTheme: IconThemeData(color: Colors.grey, size: 24.0),
      elevation: 0,
      toolbarHeight: 60.0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(10),
          bottomRight: Radius.circular(10),
        ),
      ),
      centerTitle: true,
      // leading: IconButton(
      //   icon: Icon(Icons.menu, color: Colors.grey, size: 30),
      //   onPressed: () {
      //     Scaffold.of(context).openDrawer();
      //   },
      // ),
      actions: [
        Container(
          padding: EdgeInsets.only(right: 10),
          child: Column(

            children: [
              Padding(
                padding: const EdgeInsets.all(4.0),
                child: SvgPicture.asset(
                  'svg/user.svg',
                  fit: BoxFit.cover,
                ),
              ),
              Text(
                '1682832598',
                style: TextStyle(color: Colors.black,fontSize: 10),
              ),

            ],
          ),
        ),
      ],
      backgroundColor: Color(0xffFFD504),
      title: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Container(

              padding: EdgeInsets.only(left: 2),
              margin: EdgeInsets.only(bottom: 5, right: 10),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: lightBgSecondaryColor2,
              ),
              width: 75,
              height: 16,
              child: Stack(
                clipBehavior: Clip.none,
                children: [
                  Row(

                    children: [
                      SizedBox(width: 20,),
                      Padding(
                        padding: const EdgeInsets.only(top: 2.0),
                        child: Text(
                          '\$ 10000',
                          style: myStyle(
                              8, lightBgPrimaryColor, FontWeight.w700),
                        ),
                      ),
                    ],
                  ),
                  Positioned(
                    right: -5,
                    top: -2,
                    child: SvgPicture.asset('svg/c.svg',
                        height: 18),
                  ),
                ],
              )),
          Image.asset(
            'images/glo.png',
            height: 50,
            fit: BoxFit.contain,
          ),
          Container(
              alignment: Alignment.center,
              padding: EdgeInsets.only(left: 2),
              margin: EdgeInsets.only(bottom: 5, left: 7,),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: lightBgSecondaryColor2,
              ),
              width: 75,
              height: 16,
              child: Stack(
                clipBehavior: Clip.none,
                children: [
                  Row(
                    children: [
                      SizedBox(width: 20,),
                      Padding(
                        padding: const EdgeInsets.only(top: 2.0,bottom: 2),
                        child: Text(
                          '\$ 10000',
                          style: myStyle(
                              8, lightBgPrimaryColor, FontWeight.w700),
                        ),
                      ),
                    ],
                  ),
                  Positioned(
                    left: -5,
                    top: -2,
                    child: SvgPicture.asset('svg/i.svg',
                        height: 18),
                  ),
                ],
              )),
        ],
      )
  );
}