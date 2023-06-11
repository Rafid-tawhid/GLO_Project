
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:glo_ticket/pages/profile_popup_pages/pin_setting.dart';
import 'package:glo_ticket/pages/profile_popup_pages/profile_page.dart';
import 'package:material_dialogs/dialogs.dart';
import 'package:material_dialogs/widgets/buttons/icon_button.dart';
import 'package:material_dialogs/widgets/buttons/icon_outline_button.dart';


import '../pages/profile_popup_pages/saudia_page.dart';
import 'constants.dart';




AppBar myAppbar(BuildContext context) {

  return AppBar(
      iconTheme: IconThemeData(color: Color(0xff043655), size: 24.0),
      elevation: 0,
      toolbarHeight: 80.0,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(10),
          bottomRight: Radius.circular(10),
        ),
      ),
      centerTitle: false,

      // leading: IconButton(
      //   icon: Icon(Icons.menu, color: Colors.grey, size: 30),
      //   onPressed: () {
      //     Scaffold.of(context).openDrawer();
      //   },
      // ),
      // actions: [
      //   Container(
      //     padding: EdgeInsets.only(right: 10),
      //     child: Column(
      //
      //       children: [
      //         Padding(
      //           padding: const EdgeInsets.only(right: 4.0,top: 10,bottom: 6),
      //           child: SvgPicture.asset(
      //             'svg/user.svg',
      //             fit: BoxFit.cover,
      //           ),
      //         ),
      //         Text(
      //           '1682832598',
      //           style: TextStyle(color: Colors.black,fontSize: 10),
      //         ),
      //
      //       ],
      //     ),
      //   ),
      // ],
      backgroundColor: Color(0xffFFD504),
      title: Stack(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Container(
                  padding: EdgeInsets.only(left: 2),
                  margin: EdgeInsets.only(bottom: 5, right: 10),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: lightBgSecondaryColor2,
                  ),
                  width: 90,
                  height: 20,
                  child: Stack(
                    clipBehavior: Clip.none,
                    children: [
                      Center(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(
                                right: 10.0,
                              ),
                              child: Text(
                                '\$ 1000.00 ',
                                textAlign: TextAlign.center,
                                style: myStyle(
                                  11,
                                  lightBgPrimaryColor,
                                  FontWeight.w500,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Positioned(
                        right: -7,
                        top: -2,
                        child: Image.asset('images/c.png', height: 24),
                      ),
                    ],
                  )),
              Image.asset(
                'images/glo.png',
                height: 66,
                fit: BoxFit.contain,
              ),
              Container(
                  alignment: Alignment.center,
                  padding: EdgeInsets.only(left: 2),
                  margin: const EdgeInsets.only(
                    bottom: 5,
                    left: 7,
                  ),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: lightBgSecondaryColor2,
                  ),
                  width: 90,
                  height: 20,
                  child: Stack(
                    clipBehavior: Clip.none,
                    children: [
                      Row(
                        children: [
                          SizedBox(
                            width: 20,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(
                              right: 6.0,
                            ),
                            child: Text(
                              '\$ 1000.00 ',
                              textAlign: TextAlign.center,
                              style: myStyle(
                                11,
                                lightBgPrimaryColor,
                                FontWeight.w500,
                              ),
                            ),
                          ),
                        ],
                      ),
                      Positioned(
                        left: -7,
                        top: -5,
                        child: Image.asset('images/ii.png', height: 24),
                      ),
                    ],
                  )),
            ],
          ),
          Positioned(
            right: 0,
            top: 0,
            child: InkWell(
              onTap: () async {
                showDialog(context: context,
                  builder: (BuildContext context){
                  return Center(
                    child: Stack(
                      children: [
                        Positioned(
                          top:60,
                          right: 10,
                          left: 10,
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Container(
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(10),
                                    border: Border.all(
                                        color: Colors.blue,
                                        width: 2
                                    )
                                ),
                                width: MediaQuery.of(context).size.width/1.2,
                                child:  Column(
                                  mainAxisSize: MainAxisSize.min,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Container(
                                      color: Colors.blue,
                                      width: MediaQuery.of(context).size.width/1.2,
                                      padding: const EdgeInsets.all(8.0),
                                      child: const Column(
                                        mainAxisSize: MainAxisSize.min,
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          Text('My Account',style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white),),
                                          SizedBox(height: 5,),
                                          Text('Email: admin@gmail.com',style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white),),
                                        ],
                                      ),
                                    ),
                                    Container(

                                      padding: EdgeInsets.symmetric(vertical: 10),
                                      child:  Column(
                                        mainAxisSize: MainAxisSize.min,
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          CustomPaint(
                                            painter: _TrianglePainter(),
                                          ),
                                          InkWell(
                                            onTap:(){
                                              Navigator.pushNamed(context, Profile_page.routeName);
                                            },
                                            child: const Row(
                                              mainAxisSize: MainAxisSize.min,
                                              mainAxisAlignment: MainAxisAlignment.start,
                                              children: [
                                                Icon(Icons.keyboard_arrow_right_outlined,color: Colors.blue,),
                                                Text('Profile',style: TextStyle(fontWeight: FontWeight.bold,color: Colors.blue,),),
                                              ],
                                            ),
                                          ),
                                          SizedBox(height: 5,),
                                          InkWell(
                                            onTap:(){
                                              Navigator.pushNamed(context, PinSettingPage.routeName);
                                            },
                                            child: const Row(
                                              mainAxisSize: MainAxisSize.min,
                                              mainAxisAlignment: MainAxisAlignment.start,
                                              children: [
                                                Icon(Icons.keyboard_arrow_right_outlined,color: Colors.blue,),
                                                Text('Change Pin',style: TextStyle(fontWeight: FontWeight.bold,color: Colors.blue,),),
                                              ],
                                            ),
                                          ),
                                          SizedBox(height: 5,),
                                          const Row(
                                            mainAxisSize: MainAxisSize.min,
                                            mainAxisAlignment: MainAxisAlignment.start,
                                            children: [
                                              Icon(Icons.keyboard_arrow_right_outlined,color: Colors.blue,),
                                              Text('Verified',style: TextStyle(fontWeight: FontWeight.bold,color: Colors.blue,),),
                                            ],
                                          ),
                                          SizedBox(height: 5,),
                                          InkWell(
                                            onTap: (){
                                              Navigator.pushNamed(context, SaudiaPages.routeName);
                                            },
                                            child: const Row(
                                              mainAxisSize: MainAxisSize.min,
                                              mainAxisAlignment: MainAxisAlignment.start,
                                              children: [
                                                Icon(Icons.keyboard_arrow_right_outlined,color: Colors.blue,),
                                                Text('Testimonials',style: TextStyle(fontWeight: FontWeight.bold,color: Colors.blue,),),
                                              ],
                                            ),
                                          ),
                                          SizedBox(height: 5,),
                                          const Row(
                                            mainAxisSize: MainAxisSize.min,
                                            mainAxisAlignment: MainAxisAlignment.start,
                                            children: [
                                              Icon(Icons.keyboard_arrow_right_outlined,color: Colors.blue,),
                                              Text('Logout',style: TextStyle(fontWeight: FontWeight.bold,color: Colors.blue,),),
                                            ],
                                          ),
                                          SizedBox(height: 5,),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),

                            ],
                          ),
                        )
                      ],
                    ),
                  );
                  }
                    );
              },
              child: Container(
                padding: EdgeInsets.only(right: 6),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Padding(
                      padding:
                          const EdgeInsets.only(right: 4.0, top: 0, bottom: 6),
                      child: SvgPicture.asset(
                        'svg/user.svg',
                        fit: BoxFit.cover,
                      ),
                    ),
                    const Text(
                      '1682832598',
                      style: TextStyle(color: Colors.black, fontSize: 7),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ));
}
class _TrianglePainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = Colors.blue
      ..style = PaintingStyle.fill;

    final path = Path();
    path.moveTo(0, size.height);
    path.lineTo(100 / 2, 0);
    path.lineTo(100, size.height);
    path.close();

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return false;
  }
}

