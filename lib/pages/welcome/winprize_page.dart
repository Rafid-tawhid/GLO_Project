import 'package:animated_widgets/widgets/opacity_animated.dart';
import 'package:animated_widgets/widgets/translation_animated.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../ticket_info/buy_lottery_tickets.dart';

class WinPrizePage extends StatefulWidget {
  const WinPrizePage({Key? key}) : super(key: key);
  static const String routeName='/winPrize';

  @override
  State<WinPrizePage> createState() => _WinPrizePageState();
}

class _WinPrizePageState extends State<WinPrizePage> {
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
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: MediaQuery.of(context).size.height / 11,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Image.asset('images/logo.png'),
                    TextButton(
                        style: TextButton.styleFrom(
                            backgroundColor: Colors.blueAccent.shade400),
                        onPressed: () {},
                        child: Text(
                          'English',
                          style: TextStyle(color: Colors.white),
                        ))
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Container(
                  child:Column(
                    children: [
                      TranslationAnimatedWidget.tween(
                        enabled: animation,
                        duration: Duration(milliseconds: 500),
                        translationDisabled: Offset(0, -200),
                        translationEnabled: Offset(0, 0),
                        child: OpacityAnimatedWidget.tween(
                          enabled: animation,
                          opacityDisabled: 0,
                          duration: Duration(milliseconds: 1000),
                          opacityEnabled: 1,
                          child: SvgPicture.asset('svg/trophy.svg'),
                        ),
                      ),
                      Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          TranslationAnimatedWidget.tween(
                            enabled: animation,
                            duration: Duration(milliseconds: 500),
                            translationDisabled: Offset(-500, 0),
                            translationEnabled: Offset(0, 0),
                            child: OpacityAnimatedWidget.tween(
                              enabled: animation,
                              opacityDisabled: 0,
                              duration: Duration(milliseconds: 1000),
                              opacityEnabled: 1,
                              child: Text(
                                'CHOSE A LOTTERY',
                                style: TextStyle(fontSize: 22, color: Colors.red),
                              ),
                            ),
                          ),

                          SizedBox(
                            height: 15,
                          ),
                          TranslationAnimatedWidget.tween(
                            enabled: animation,
                            duration: Duration(milliseconds: 500),
                            translationDisabled: Offset(200, 0),
                            translationEnabled: Offset(0, 0),
                            child: OpacityAnimatedWidget.tween(
                              enabled: animation,
                              opacityDisabled: 0,
                              duration: Duration(milliseconds: 1000),
                              opacityEnabled: 1,
                              child: Text(
                                'BUY A TICKET & WIN BIG PRIZES',
                                style: TextStyle(fontSize: 22, color: Colors.blue),
                              ),
                            ),
                          ),

                        ],
                      ),

                    ],
                  ),
              ),
            ),
            ElevatedButton(
                style: ElevatedButton.styleFrom(backgroundColor: Colors.blue),
                onPressed: () {
                //  Navigator.pushNamed(context, BuyTicketPage.routeName);
                },
                child: Text('Next'))
          ],
        ),
      ),
    );

  }
}
