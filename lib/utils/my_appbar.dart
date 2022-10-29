import 'package:flutter/material.dart';

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
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              IconButton(
                icon: CircleAvatar(
                  backgroundColor: Color(0xff8E8E93),
                  child: Image.asset(
                    'images/profile.png',
                    fit: BoxFit.cover,
                  ),
                ),
                onPressed: () {},
              ),
              Text(
                '01682832598',
                style: TextStyle(color: Colors.black,fontSize: 10),
              ),
            ],
          ),
        ),
      ],
      backgroundColor: Colors.yellowAccent,
      title: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Container(
              padding: EdgeInsets.only(left: 2),
              margin: EdgeInsets.only(bottom: 8, right: 10),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: lightBgSecondaryColor,
              ),
              width: 70,
              height: 12,
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
                              7, lightBgPrimaryColor, FontWeight.w700),
                        ),
                      ),
                    ],
                  ),
                  Positioned(
                    right: -5,
                    top: -2,
                    child: Image.asset('images/i.png',
                        height: 15),
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
              margin: EdgeInsets.only(bottom: 8, left: 7),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: lightBgSecondaryColor,
              ),
              width: 70,
              height: 12,
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
                              7, lightBgPrimaryColor, FontWeight.w700),
                        ),
                      ),
                    ],
                  ),
                  Positioned(
                    left: -5,
                    top: -2,
                    child: Image.asset('images/c.png',
                        height: 15),
                  ),
                ],
              )),
        ],
      )
  );
}