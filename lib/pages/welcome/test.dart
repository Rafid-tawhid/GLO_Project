import 'package:animated_widgets/widgets/opacity_animated.dart';
import 'package:animated_widgets/widgets/translation_animated.dart';
import 'package:carousel_slider/carousel_controller.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:glo_project/pages/welcome/welcome_dashboard.dart';
import 'package:glo_project/pages/welcome/winprize_page.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class CarouselDemo extends StatefulWidget {
  static const String routeName='/';

  @override
  State<CarouselDemo> createState() => _CarouselDemoState();
}

class _CarouselDemoState extends State<CarouselDemo> {
  int activeIndex = 0;
  int index=0;
  final controller = CarouselController();
  final urlImages = [
    'https://images.unsplash.com/photo-1612825173281-9a193378527e?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=499&q=80',
    'https://images.unsplash.com/photo-1580654712603-eb43273aff33?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1170&q=80',
    'https://images.unsplash.com/photo-1627916607164-7b20241db935?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=464&q=80',
    'https://images.unsplash.com/photo-1522037576655-7a93ce0f4d10?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1170&q=80',
    'https://images.unsplash.com/photo-1570829053985-56e661df1ca2?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1170&q=80',
  ];

  bool animation = false;
  bool animation2 = false;
  bool animation3 = false;

  @override
  void initState() {
    animation = !animation;
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        decoration: BoxDecoration(
            color: Colors.white,
            image: DecorationImage(
                image: AssetImage('images/bg_dashboard.png'),
                fit: BoxFit.contain)),
        child: Column(
          children: [
            SizedBox(height: 30,),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: MediaQuery.of(context).size.height / 12,
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
              child: Center(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    CarouselSlider(
                        carouselController: controller,
                        items: [
                          welcomeDashboard(),
                          winPrizes(),
                          buyTicket(),

                        ],
                        options: CarouselOptions(
                            height: 500,
                            autoPlay: false,
                            enableInfiniteScroll: false,
                            autoPlayAnimationDuration: Duration(seconds: 2),
                            enlargeCenterPage: true,
                            onPageChanged: (index, reason) =>
                                setState(() => activeIndex = index))),
                    SizedBox(height: 12),
                    buildIndicator(),
                    SizedBox(height: 25,),
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
                            controller.animateToPage(index);
                            if(index==1){
                              setState(() {
                                animation2 = !animation2;
                              });
                            }
                            if(index==2){
                              setState(() {
                                animation3 = !animation3;
                              });
                            }
                           // Navigator.pushNamed(context, WinPrizePage.routeName);
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
              ),
            ),
          ],
        ),
      ),
    );
  }

  Padding buyTicket() {
    return Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Container(
                    child:Column(
                      children: [
                        TranslationAnimatedWidget.tween(
                          enabled: animation3,
                          duration: Duration(milliseconds: 1500),
                          translationDisabled: Offset(-200, 0),
                          translationEnabled: Offset(0, 0),
                          child: OpacityAnimatedWidget.tween(
                            enabled: animation3,
                            opacityDisabled: 0,
                            duration: Duration(milliseconds: 1500),
                            opacityEnabled: 1,
                            child: SvgPicture.asset('svg/tickets.svg'),
                          ),
                        ),
                        SizedBox(height: 20,),
                        Column(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            TranslationAnimatedWidget.tween(
                              enabled: animation3,
                              duration: Duration(milliseconds: 1500),
                              translationDisabled: Offset(0, 200),
                              translationEnabled: Offset(0, 0),
                              child: OpacityAnimatedWidget.tween(
                                enabled: animation3,
                                opacityDisabled: 0,
                                duration: Duration(milliseconds: 1500),
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
                              duration: Duration(milliseconds: 1500),
                              translationDisabled: Offset(0, 200),
                              translationEnabled: Offset(0, 0),
                              child: OpacityAnimatedWidget.tween(
                                enabled: animation3,
                                opacityDisabled: 0,
                                duration: Duration(milliseconds: 1500),
                                opacityEnabled: 1,
                                child: Text(
                                  'UP TO 30% DISCOUNT',
                                  style: TextStyle(fontSize: 22, color: Colors.blue),
                                ),
                              ),
                            ),

                          ],
                        ),

                      ],
                    ),
                  ),
                );
  }

  Column winPrizes() {
    return Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    TranslationAnimatedWidget.tween(
                      enabled: animation2,
                      duration: Duration(milliseconds: 1500),
                      translationDisabled: Offset(0, -200),
                      translationEnabled: Offset(0, 0),
                      child: OpacityAnimatedWidget.tween(
                        enabled: animation2,
                        opacityDisabled: 0,
                        duration: Duration(milliseconds: 1500),
                        opacityEnabled: 1,
                        child: SvgPicture.asset('svg/trophy.svg'),
                      ),
                    ),
                    Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        TranslationAnimatedWidget.tween(
                          enabled: animation2,
                          duration: Duration(milliseconds: 1500),
                          translationDisabled: Offset(-500, 0),
                          translationEnabled: Offset(0, 0),
                          child: OpacityAnimatedWidget.tween(
                            enabled: animation2,
                            opacityDisabled: 0,
                            duration: Duration(milliseconds: 1500),
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
                          enabled: animation2,
                          duration: Duration(milliseconds: 1500),
                          translationDisabled: Offset(200, 0),
                          translationEnabled: Offset(0, 0),
                          child: OpacityAnimatedWidget.tween(
                            enabled: animation2,
                            opacityDisabled: 0,
                            duration: Duration(milliseconds: 1500),
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
                );
  }

  Column welcomeDashboard() {
    return Column(
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
                );
  }
  Widget buildIndicator() => AnimatedSmoothIndicator(
    onDotClicked: animateToSlide,
    effect: ExpandingDotsEffect(dotWidth: 15, activeDotColor: Colors.blue),
    activeIndex: activeIndex,
    count: urlImages.length,
  );
  void animateToSlide(int index) => controller.animateToPage(index);
}

Widget buildImage(String urlImage, int index,BuildContext context) =>
    Container(
        width: MediaQuery.of(context).size.width,
        child: Image.network(urlImage, fit: BoxFit.cover));