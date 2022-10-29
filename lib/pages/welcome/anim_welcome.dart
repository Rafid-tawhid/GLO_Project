
import 'package:ezanimation/ezanimation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:glo_project/pages/welcome/welcome_dashboard.dart';

class WelcomeAnim extends StatefulWidget {
  static const String routeName = '/welcome_anim';

  @override
  State<WelcomeAnim> createState() => _WelcomeAnimState();
}

class _WelcomeAnimState extends State<WelcomeAnim> {
  EzAnimation ezAnimation=EzAnimation(200.0, 50.0, Duration(seconds: 2));

  @override
  void initState() {
    Future.delayed(
      Duration(milliseconds: 50),
        (){
        ezAnimation.start();
        }
    );
    Future.delayed(
        Duration(seconds: 2),
            (){
          ezAnimation.reverse();
        }
    );
    Future.delayed(Duration(seconds: 4),(){
      Navigator.pushNamed(context, WelcomeDashboard.routeName);
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage(
                  'images/welcome_bg2.PNG',
                ),
                fit: BoxFit.cover)),
        child: Column(
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height/5,
            ),
            SvgPicture.asset('svg/glo2.svg'),
            SizedBox(
              height: 70,
            ),
            AnimatedBuilder(
              animation: ezAnimation,
              builder: (context,snapshot)=>Container(
                height: ezAnimation.value,
                  width: ezAnimation.value,
                  child: SvgPicture.asset('svg/main_logo.svg',)),
            ),

          ],
        ),
      ),
    );
  }
}
