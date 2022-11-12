import 'package:animated_widgets/widgets/opacity_animated.dart';
import 'package:animated_widgets/widgets/translation_animated.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:ezanimation/ezanimation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:glo_project/pages/home_page.dart';
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
  bool dragOnce = false;
  int pageNo = 0;
  final Color kDarkBlueColor = Color(0xFF053149);
  bool animation2 = false;
  bool animation3 = false;
  bool animation4 = false;
  bool animation5 = false;
  bool animation6 = false;
  final CarouselController _controller = CarouselController();
  EzAnimation ezAnimation=EzAnimation(200.0, 50.0, Duration(milliseconds: 1500));
  @override
  void initState() {
    Future.delayed(Duration(microseconds: 500), () {
      setState(() {
        animation = true;
      });
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 40.0, left: 8, right: 8),
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
          Expanded(
            child: CarouselSlider(
              carouselController: _controller,
              items: [
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Container(
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 40.0, right: 40),
                            child: Row(
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
                                      child: SvgPicture.asset('svg/d2.svg'),
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
                                      child: SvgPicture.asset('svg/d1.svg'),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 40.0, right: 40),
                            child: Row(
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
                                      child: SvgPicture.asset('svg/d3.svg'),
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
                                      child: SvgPicture.asset('svg/d4.svg'),
                                    ),
                                  ),
                                ),
                              ],
                            ),
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
                      )),
                ),
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Container(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        TranslationAnimatedWidget.tween(
                          enabled: animation2,
                          duration: Duration(milliseconds: 500),
                          translationDisabled: Offset(0, -200),
                          translationEnabled: Offset(0, 0),
                          child: OpacityAnimatedWidget.tween(
                            enabled: animation2,
                            opacityDisabled: 0,
                            duration: Duration(milliseconds: 200),
                            opacityEnabled: 1,
                            child: Image.asset('images/trophy.png'),
                          ),
                        ),
                        Column(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            TranslationAnimatedWidget.tween(
                              enabled: animation2,
                              duration: Duration(milliseconds: 500),
                              translationDisabled: Offset(-500, 0),
                              translationEnabled: Offset(0, 0),
                              child: OpacityAnimatedWidget.tween(
                                enabled: animation2,
                                opacityDisabled: 0,
                                duration: Duration(milliseconds: 200),
                                opacityEnabled: 1,
                                child: Text(
                                  'CHOSE A LOTTERY',
                                  style: TextStyle(
                                      fontSize: 22, color: Colors.red),
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 15,
                            ),
                            TranslationAnimatedWidget.tween(
                              enabled: animation2,
                              duration: Duration(milliseconds: 500),
                              translationDisabled: Offset(200, 0),
                              translationEnabled: Offset(0, 0),
                              child: OpacityAnimatedWidget.tween(
                                enabled: animation2,
                                opacityDisabled: 0,
                                duration: Duration(milliseconds: 200),
                                opacityEnabled: 1,
                                child: Text(
                                  'BUY A TICKET & WIN BIG PRIZES',
                                  style: TextStyle(
                                      fontSize: 22, color: Colors.blue),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      TranslationAnimatedWidget.tween(
                        enabled: animation3,
                        duration: Duration(milliseconds: 500),
                        translationDisabled: Offset(-200, 0),
                        translationEnabled: Offset(0, 0),
                        child: OpacityAnimatedWidget.tween(
                          enabled: animation3,
                          opacityDisabled: 0,
                          duration: Duration(milliseconds: 500),
                          opacityEnabled: 1,
                          child: Image.asset('images/tickets.png'),
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      TranslationAnimatedWidget.tween(
                        enabled: animation3,
                        duration: Duration(milliseconds: 500),
                        translationDisabled: Offset(0, 200),
                        translationEnabled: Offset(0, 0),
                        child: OpacityAnimatedWidget.tween(
                          enabled: animation3,
                          opacityDisabled: 0,
                          duration: Duration(milliseconds: 500),
                          opacityEnabled: 1,
                          child: Text(
                            'GET YOUR TICKETS',
                            style: TextStyle(fontSize: 22, color: Colors.red),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      TranslationAnimatedWidget.tween(
                        enabled: animation3,
                        duration: Duration(milliseconds: 500),
                        translationDisabled: Offset(0, 200),
                        translationEnabled: Offset(0, 0),
                        child: OpacityAnimatedWidget.tween(
                          enabled: animation3,
                          opacityDisabled: 0,
                          duration: Duration(milliseconds: 500),
                          opacityEnabled: 1,
                          child: Text(
                            'UP TO 30% DISCOUNT',
                            style: TextStyle(fontSize: 22, color: Colors.blue),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Container(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,

                      children: [
                        TranslationAnimatedWidget.tween(
                          enabled: animation4,
                          duration: Duration(milliseconds: 500),
                          translationDisabled: Offset(200, -200),
                          translationEnabled: Offset(0, 0),
                          child: OpacityAnimatedWidget.tween(
                            enabled: animation4,
                            opacityDisabled: 0,
                            duration: Duration(milliseconds: 200),
                            opacityEnabled: 1,
                            child: Image.asset('images/account.png'),
                          ),
                        ),
                        SizedBox(
                          height: 40,
                        ),
                        Column(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            TranslationAnimatedWidget.tween(
                              enabled: animation4,
                              duration: Duration(milliseconds: 500),
                              translationDisabled: Offset(-500, 0),
                              translationEnabled: Offset(0, 0),
                              child: OpacityAnimatedWidget.tween(
                                enabled: animation4,
                                opacityDisabled: 0,
                                duration: Duration(milliseconds: 200),
                                opacityEnabled: 1,
                                child: Text(
                                  'ACCOUNT TO ACCOUNT',
                                  style: TextStyle(
                                      fontSize: 22, color: Colors.red),
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 15,
                            ),
                            TranslationAnimatedWidget.tween(
                              enabled: animation4,
                              duration: Duration(milliseconds: 500),
                              translationDisabled: Offset(200, 0),
                              translationEnabled: Offset(0, 0),
                              child: OpacityAnimatedWidget.tween(
                                enabled: animation4,
                                opacityDisabled: 0,
                                duration: Duration(milliseconds: 200),
                                opacityEnabled: 1,
                                child: Text(
                                  'MONEY TRANSFER',
                                  style: TextStyle(
                                      fontSize: 22, color: Colors.blue),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Container(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Stack(
                          children: [
                            TranslationAnimatedWidget.tween(
                              enabled: animation5,
                              duration: Duration(milliseconds: 500),
                              translationDisabled: Offset(-200, 0),
                              translationEnabled: Offset(0, 0),
                              child: OpacityAnimatedWidget.tween(
                                enabled: animation5,
                                opacityDisabled: 0,
                                duration: Duration(milliseconds: 200),
                                opacityEnabled: 1,
                                child: Image.asset('images/money_circle.png'),
                              ),
                            ),
                            Positioned(
                              left: 0,
                              right: 0,
                              top: 0,
                              bottom: 0,
                              child: TranslationAnimatedWidget.tween(
                                enabled: animation5,
                                duration: Duration(milliseconds: 500),
                                translationDisabled: Offset(0, -200),
                                translationEnabled: Offset(0, 0),
                                child: OpacityAnimatedWidget.tween(
                                  enabled: animation5,
                                  opacityDisabled: 0,
                                  duration: Duration(milliseconds: 200),
                                  opacityEnabled: 1,
                                  child: Image.asset('images/bank.png'),
                                ),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 40,
                        ),
                        Column(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            TranslationAnimatedWidget.tween(
                              enabled: animation5,
                              duration: Duration(milliseconds: 500),
                              translationDisabled: Offset(-500, 0),
                              translationEnabled: Offset(0, 0),
                              child: OpacityAnimatedWidget.tween(
                                enabled: animation5,
                                opacityDisabled: 0,
                                duration: Duration(milliseconds: 200),
                                opacityEnabled: 1,
                                child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    Text(
                                      'WORLD WIDE',
                                      style: TextStyle(
                                          fontSize: 22, color: Colors.red),
                                    ),
                                    SizedBox(
                                      height: 15,
                                    ),
                                    Text(
                                      'MONEY WITHDRAWAL',
                                      style: TextStyle(
                                          fontSize: 22,
                                          color: Color(0xff061596)),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Container(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Stack(
                          children: [
                            TranslationAnimatedWidget.tween(
                              enabled: animation6,
                              duration: Duration(milliseconds: 500),
                              translationDisabled: Offset(-200, 0),
                              translationEnabled: Offset(0, -40),
                              child: OpacityAnimatedWidget.tween(
                                enabled: animation6,
                                opacityDisabled: 0,
                                duration: Duration(milliseconds: 200),
                                opacityEnabled: 1,
                                child: SvgPicture.asset('svg/money.svg'),
                              ),
                            ),
                            Positioned(
                              left: 0,
                              right: 0,
                              top: 0,
                              bottom: 0,
                              child: TranslationAnimatedWidget.tween(
                                enabled: animation6,
                                duration: Duration(milliseconds: 500),
                                translationDisabled: Offset(0, -200),
                                translationEnabled: Offset(0, 0),
                                child: OpacityAnimatedWidget.tween(
                                  enabled: animation6,
                                  opacityDisabled: 0,
                                  duration: Duration(milliseconds: 200),
                                  opacityEnabled: 1,
                                  child: SvgPicture.asset('svg/people.svg'),
                                ),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 40,
                        ),
                        Column(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            TranslationAnimatedWidget.tween(
                              enabled: animation6,
                              duration: Duration(milliseconds: 500),
                              translationDisabled: Offset(-500, 0),
                              translationEnabled: Offset(0, 0),
                              child: OpacityAnimatedWidget.tween(
                                enabled: animation6,
                                opacityDisabled: 0,
                                duration: Duration(milliseconds: 200),
                                opacityEnabled: 1,
                                child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    Text(
                                      'REFER YOUR FRIEND',
                                      style: TextStyle(
                                          fontSize: 22, color: Colors.red),
                                    ),
                                    SizedBox(
                                      height: 15,
                                    ),
                                    Text(
                                      'AND GET UNLIMITED COMISSION',
                                      style: TextStyle(
                                          fontSize: 22,
                                          color: Color(0xff061596)),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ],

              //Slider Container properties
              options: CarouselOptions(
                height: 480.0,
                viewportFraction: 1,
                reverse: false,
                onPageChanged: (value, CarouselPageChangedReason) {
                  if(value == 6) {
                  Navigator.pushNamed(context, HomePage.routeName);
                  }
                  pageNo = value;
                  changePage(pageNo);
                  setState(() {});

                },
                enlargeCenterPage: true,
                // autoPlay: true,
                aspectRatio: 16 / 9,
                // autoPlayCurve: Curves.fastOutSlowIn,
                // enableInfiniteScroll: true,
                // autoPlayAnimationDuration: Duration(milliseconds: 800),
              ),
            ),
          ),
          Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              AnimatedSmoothIndicator(
                activeIndex: pageNo,
                count: 6,
                effect: WormEffect(
                  spacing: 4.0,
                  radius: 50.0,
                  dotWidth: 6.0,
                  dotHeight: 6.0,
                  paintStyle: PaintingStyle.fill,
                  strokeWidth: 1,
                  dotColor: Colors.grey,
                  activeDotColor: Colors.indigo,
                ),
              ),
              SizedBox(
                height: 16,
              ),
              Container(
                height: 38,
                width: 135,
                child: ElevatedButton(
                    style: ButtonStyle(
                        backgroundColor:
                        MaterialStateProperty.resolveWith<Color>(
                              (Set<MaterialState> states) {
                            if (states.contains(MaterialState.pressed))
                              return Colors.blueAccent;
                            return Color(0xff2E3192); // Use the component's default.
                          },
                        ),
                        shape: MaterialStateProperty.all(RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12),
                        ))),
                    onPressed: () {
                      _controller.nextPage();
                      pageNo++;
                      changePage(pageNo);
                      setState(() {});
                      // Navigator.pushNamed(context, HomePage.routeName);
                    },
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        SizedBox(
                          width: 5,
                        ),
                        Text(
                          'Next',
                          style: TextStyle(fontSize: 20),
                        ),
                        SizedBox(
                          width: 4,
                        ),
                        Icon(
                          Icons.arrow_forward_ios,
                          size: 17,
                        ),
                        SizedBox(
                          width: 5,
                        ),
                      ],
                    )),
              ),
              SizedBox(
                height: 40,
              )
            ],
          ),
        ],
      ),
    );
  }
  void changePage(int pageNo) {
    print(pageNo);
    if (pageNo == 0) {
      animation = true;
      animation2 = false;
      animation3 = false;
      animation4 = false;
      animation5 = false;
      animation6 = false;
    }
    if (pageNo == 1) {
      animation2 = true;
      animation = false;
      animation3 = false;
      animation4 = false;
      animation5 = false;
      animation6 = false;
    }
    if (pageNo == 2) {
      animation3 = true;
      animation2 = false;
      animation = false;
      animation4 = false;
      animation5 = false;
      animation6 = false;
    }
    if (pageNo == 3) {
      animation4 = true;
      animation2 = false;
      animation3 = false;
      animation = false;
      animation5 = false;
      animation6 = false;
    }
    if (pageNo == 4) {
      animation5 = true;
      animation2 = false;
      animation3 = false;
      animation4 = false;
      animation = false;
      animation6 = false;
    }
    if (pageNo == 5) {
      animation6 = true;
      animation5 = false;
      animation2 = false;
      animation3 = false;
      animation4 = false;
      animation = false;

    }
  }
}
