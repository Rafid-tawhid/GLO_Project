import 'package:flutter/material.dart';
import 'package:glo_project/pages/dealership_page.dart';
import 'package:glo_project/pages/home_page.dart';
import 'package:glo_project/pages/login_register/forget_password.dart';
import 'package:glo_project/pages/login_register/login_page.dart';
import 'package:glo_project/pages/login_register/varify_page.dart';
import 'package:glo_project/pages/ticket_info/national_ticket_info.dart';
import 'package:glo_project/upgrade_page/upgrade_page.dart';
import 'package:glo_project/pages/welcome/anim_welcome.dart';
import 'package:glo_project/pages/welcome/buy_tickets.dart';
import 'package:glo_project/pages/welcome/test.dart';

import 'package:glo_project/pages/welcome/welcome_dashboard.dart';
import 'package:glo_project/pages/welcome/welcome_page.dart';
import 'package:glo_project/pages/welcome/winprize_page.dart';

import 'pages/login_register/login_welcome.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      color: Color(0xff2E3192),
      theme: ThemeData(
        primaryColor: Color(0xff2E3192),
      ),
    // home: CarouselDemo(),
      initialRoute: NationalTicketPage.routeName,
      routes: {
        WelcomePage.routeName:(context)=>WelcomePage(),
        WelcomeAnim.routeName:(context)=>WelcomeAnim(),
        WelcomeDashboard.routeName:(context)=>WelcomeDashboard(),
        BuyTicketPage.routeName:(context)=>BuyTicketPage(),
        WinPrizePage.routeName:(context)=>WinPrizePage(),
        LoginPage.routeName:(context)=>LoginPage(),
        ForgetPassword.routeName:(context)=>ForgetPassword(),
        LoginWelcome.routeName:(context)=>LoginWelcome(),
        VerificationPage.routeName:(context)=>VerificationPage(),
        UpgradePage.routeName:(context)=>UpgradePage(),
        HomePage.routeName:(context)=>HomePage(),
        DealershipPage.routeName:(context)=>DealershipPage(),
        NationalTicketPage.routeName:(context)=>NationalTicketPage(),


      },
    );
  }
}

