import 'package:animated_widgets/animated_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:glo_project/pages/login_register/varify_page.dart';

class LoginWelcome extends StatefulWidget {
  static const String routeName='/login_welcome';

  @override
  State<LoginWelcome> createState() => _LoginWelcomeState();
}

class _LoginWelcomeState extends State<LoginWelcome> {
  bool animation=false;
  bool freeBox=true;
  @override
  void initState() {
    Future.delayed(Duration(microseconds: 1),(){
      setState(() {
        animation=true;
        freeBox=false;
      });
    });
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(

          children: [
            Padding(
              padding: const EdgeInsets.only(left: 8.0,right: 8,top: 8),
              child: Container(
                  width: MediaQuery.of(context).size.width,
                  child: Image.asset(
                    'images/login_banner.png',
                    fit: BoxFit.fitWidth,
                  )),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 15.0, right: 15),
              child: Container(

                child: Card(
                  elevation: 10,
                  shadowColor: Colors.black,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.only(bottomLeft: Radius.circular(15),bottomRight: Radius.circular(15)),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 22.0,right: 22),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Column(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                           Column(
                             mainAxisSize: MainAxisSize.min,
                             children: [
                               SizedBox(height: 15,),
                               Row(
                                 mainAxisAlignment: MainAxisAlignment.center,
                                 children: [
                                   SvgPicture.asset('svg/login_welcome_star.svg'),
                                 ],
                               ),
                               SizedBox(height: 15,),

                               Row(
                                 mainAxisAlignment: MainAxisAlignment.center,
                                 children: [
                                   TranslationAnimatedWidget.tween(
                                     enabled: animation,
                                     duration: Duration(milliseconds: 1000),
                                     translationDisabled: Offset(-200, 0),
                                     translationEnabled: Offset(0, 0),
                                     child: OpacityAnimatedWidget.tween(
                                       enabled: animation,
                                       opacityDisabled: 0,
                                       duration: Duration(milliseconds: 1000),
                                       opacityEnabled: 1,
                                       child: SvgPicture.asset('svg/login_welcome_logo.svg'),
                                     ),
                                   ),


                                 ],
                               ),
                               SizedBox(height: 5,),
                               Row(
                                 mainAxisAlignment: MainAxisAlignment.center,
                                 children: [
                                   TranslationAnimatedWidget.tween(
                                     enabled: animation,
                                     duration: Duration(milliseconds: 1000),
                                     translationDisabled: Offset(200, 0),
                                     translationEnabled: Offset(0, 0),
                                     child: OpacityAnimatedWidget.tween(
                                       enabled: animation,
                                       opacityDisabled: 0,
                                       duration: Duration(milliseconds: 1000),
                                       opacityEnabled: 1,
                                       child: Text('WELCOME!',style: TextStyle(fontSize: 24,color: Color(0xff02C6C1)),),
                                     ),
                                   ),

                                 ],
                               ),
                               SizedBox(height: 10,),
                               Text('Your Official Personal Account Registration Successful!',style: TextStyle(color: Color(0xFF248E3C),fontSize: 12,),textAlign: TextAlign.center,),
                               SizedBox(height: 15,),
                             ],
                           ),
                            SizedBox(height: 60,),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text('SKIP',style: TextStyle(fontSize: 12,color: Color(0xff02C6C1)),),
                                InkWell(
                                  onTap: (){
                                    Navigator.pushNamed(context, VerificationPage.routeName);
                                  },
                                    child: Text('VARIFY NOW',style: TextStyle(fontSize: 12,color: Color(0xff02C6C1)),))
                              ],
                            ),
                            SizedBox(height: 15,),
                          ],
                        ),

                      ],
                    ),
                  ),
                ),
              ),
            ),

          ],
        ),
      ),
    );
  }
}
