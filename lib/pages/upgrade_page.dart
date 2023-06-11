import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../utils/constants.dart';

class UpgradePage extends StatefulWidget {
  static const String routeName='/upgrade_page';

  @override
  State<UpgradePage> createState() => _UpgradePageState();
}

class _UpgradePageState extends State<UpgradePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          elevation: 0,
          toolbarHeight: 70.0,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(10),
              bottomRight: Radius.circular(10),
            ),
          ),
          centerTitle: true,

          leading: IconButton(
            icon: Icon(Icons.menu, color: Colors.grey, size: 30),
            onPressed: () {},
          ),
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
                    style: TextStyle(fontSize: 7,color: Colors.blueGrey)
                  ),
                ],
              ),
            ),
          ],
          backgroundColor: lightBgPrimaryColor,
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
                        child: Image.asset('images/ii.png',
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
          )),
      body: Column(
        children: [
          SizedBox(height: 30,),
          Card(
            elevation: 10,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10)
            ),
            child: Container(
              height: MediaQuery.of(context).size.height/2,
              color: Color(0xffE5F3FC),
              child: Column(
                children: [
                  SvgPicture.asset('svg/all_logo.svg'),
                  SizedBox(height: 10,),
                  Text('Official Personal Account',style: TextStyle(fontSize: 24,color: Colors.lightBlue),),
                  SizedBox(height: 5,),
                  Text('Yearly'),
                  SizedBox(height: 8,),
                  Container(
                    height: 1.5,
                    color: Colors.lightBlue,
                    width: MediaQuery.of(context).size.width/2,
                  )
                ],
              )
            ),
          )
        ],
      ),
    );
  }
}
