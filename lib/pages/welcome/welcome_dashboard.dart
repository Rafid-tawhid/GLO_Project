import 'package:animated_widgets/widgets/opacity_animated.dart';
import 'package:animated_widgets/widgets/translation_animated.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:glo_project/pages/welcome/winprize_page.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class WelcomeDashboard extends StatefulWidget {
  static const String routeName = 'welcomeDashboard';
  const WelcomeDashboard({Key? key}) : super(key: key);

  @override
  State<WelcomeDashboard> createState() => _WelcomeDashboardState();
}

class _WelcomeDashboardState extends State<WelcomeDashboard> {
  bool animation = false;

  @override
  void initState() {
    Future.delayed(Duration(seconds: 1), () {
      setState(() {
        animation = !animation;
      });
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
            color: Colors.white,
            image: DecorationImage(
                image: AssetImage('images/bg_dashboard.png'),
                fit: BoxFit.contain)),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [

            Padding(
              padding: const EdgeInsets.only(top: 40.0,left: 8,right: 8),
              child: Container(
                height: MediaQuery.of(context).size.height / 11,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Image.asset('images/logo.png'),
                    TextButton(
                        style: TextButton.styleFrom(
                            backgroundColor: Color(0xffD5E2FC)),
                        onPressed: () {},
                        child: Text(
                          'English',
                          style: TextStyle(color: Colors.black),
                        ))
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Container(
                child:Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Row(
                      children: [
                        Expanded(
                          child: TranslationAnimatedWidget.tween(
                            enabled: animation,
                            duration: Duration(milliseconds: 1000),
                            translationDisabled: Offset(-300, -100),
                            translationEnabled: Offset(0, 0),
                            child: OpacityAnimatedWidget.tween(
                              enabled: animation,
                              duration: Duration(milliseconds: 1000),
                              opacityDisabled: 0,
                              opacityEnabled: 1,
                              child: Image.asset('images/a1.png'),
                            ),
                          ),
                        ),
                        Expanded(
                          child: TranslationAnimatedWidget.tween(
                            enabled: animation,
                            duration: Duration(milliseconds: 1000),
                            translationDisabled: Offset(300, -100),
                            translationEnabled: Offset(0, 0),
                            child: OpacityAnimatedWidget.tween(
                              enabled: animation,
                              duration: Duration(milliseconds: 1000),
                              opacityDisabled: 0,
                              opacityEnabled: 1,
                              child: Image.asset('images/a1.png'),
                            ),
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Expanded(
                          child: TranslationAnimatedWidget.tween(
                            enabled: animation,
                            duration: Duration(milliseconds: 1000),
                            translationDisabled: Offset(-300, 0),
                            translationEnabled: Offset(0, 0),
                            child: OpacityAnimatedWidget.tween(
                              enabled: animation,
                              opacityDisabled: 0,
                              duration: Duration(milliseconds: 1000),
                              opacityEnabled: 1,
                              child: Image.asset('images/a1.png'),
                            ),
                          ),
                        ),
                        Expanded(
                          child: TranslationAnimatedWidget.tween(
                            enabled: animation,
                            duration: Duration(milliseconds: 1000),
                            translationDisabled: Offset(300, 0),
                            translationEnabled: Offset(0, 0),
                            child: OpacityAnimatedWidget.tween(
                              enabled: animation,
                              opacityDisabled: 0,
                              duration: Duration(milliseconds: 1000),
                              opacityEnabled: 1,
                              child: Image.asset('images/a1.png'),
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text(
                          'YOU CAN BUY',
                          style: TextStyle(fontSize: 22, color: Colors.red),
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        Text(
                          'FOUR TYPES OF LOTTERY HERE',
                          style: TextStyle(fontSize: 22, color: Colors.blue),
                        ),
                      ],
                    ),
                  ],
                )
              ),
            ),
            Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                AnimatedSmoothIndicator(
                  activeIndex: 0,
                  count:  6,
                  effect:  WormEffect(
                      spacing:  4.0,
                      radius:  50.0,
                      dotWidth:  6.0,
                      dotHeight:  6.0,
                      paintStyle:  PaintingStyle.fill,
                      strokeWidth:  1,
                      dotColor:  Colors.grey,
                      activeDotColor:  Colors.indigo,

                  ),
                ),
                SizedBox(height: 16,),
                Container(
                  height: 38,
                  width: 135,
                  child: ElevatedButton(
                      style: ButtonStyle(
                        shape: MaterialStateProperty.all(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(12),
                          )
                        )
                           ),

                      onPressed: () {
                         Navigator.pushNamed(context, WinPrizePage.routeName);
                      },
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          SizedBox(width: 5,),
                          Text('Next',style: TextStyle(fontSize: 20),),
                          SizedBox(width: 4,),
                          Icon(Icons.arrow_forward_ios,size: 17,),
                          SizedBox(width: 5,),
                        ],
                      )),
                ),
              ],
            ),
            SizedBox(height: 1,)

          ],
        ),
      ),
    );
  }








}
