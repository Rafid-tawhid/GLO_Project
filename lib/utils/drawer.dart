import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:glo_ticket/utils/constants.dart';

import 'package:shared_preferences/shared_preferences.dart';

import '../helper_functions/user_info.dart';
import '../pages/dealership_page.dart';
import '../pages/login_register/login_page.dart';
import '../pages/upgrade_page.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Drawer(
      elevation: 6.0,
      width: 280,
      child: SafeArea(
        child: ListView(
          children: [
            SizedBox(height: 20,),
            Row(
             mainAxisAlignment: MainAxisAlignment.center,
             children: [
               Padding(
                 padding: const EdgeInsets.all(16.0),
                 child: Image.asset('images/glo_logo.png',fit: BoxFit.contain,width: MediaQuery.of(context).size.width/2.4,),
               )
             ],
           ),
             Padding(
              padding: EdgeInsets.only(left: 30,top: 12),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Padding(
                    padding: EdgeInsets.only(bottom: 18.0),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                       SvgPicture.asset('svg/transferx.svg'),
                        SizedBox(width: 10,),
                        Text('Dashboard',style: TextStyle(color: Color(0xff043655),fontSize: 16),)
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(bottom: 18.0),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        SvgPicture.asset('svg/upgradex.svg'),
                        SizedBox(width: 10,),
                        Text('Upgrade Account',style: TextStyle(color: Color(0xff043655),fontSize: 16),)
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(bottom: 18.0),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        SvgPicture.asset('svg/depositx.svg'),
                        SizedBox(width: 10,),
                        Text('Deposit',style: TextStyle(color: Color(0xff043655),fontSize: 16),)
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(bottom: 18.0),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        SvgPicture.asset('svg/investmentx.svg'),
                        SizedBox(width: 10,),
                        Text('Investment',style: TextStyle(color: Color(0xff043655),fontSize: 16),)
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(bottom: 18.0),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        SvgPicture.asset('svg/transferx.svg'),
                        SizedBox(width: 10,),
                        Text('Transfer',style: TextStyle(color: Color(0xff043655),fontSize: 16),)
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(bottom: 18.0),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                       SvgPicture.asset('svg/lotteryx.svg'),
                        SizedBox(width: 10,),
                        Text('Lotteries',style: TextStyle(color: Color(0xff043655),fontSize: 16),)
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(bottom: 18.0),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                       SvgPicture.asset('svg/hourglass.svg'),
                        SizedBox(width: 10,),
                        Text('Results',style: TextStyle(color: Color(0xff043655),fontSize: 16),)
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(bottom: 18.0),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                       SvgPicture.asset('svg/history.svg'),
                        SizedBox(width: 10,),
                        Text('Lotteries History',style: TextStyle(color: Color(0xff043655),fontSize: 16),)
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(bottom: 18.0),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                       SvgPicture.asset('svg/withdrawx.svg'),
                        SizedBox(width: 10,),
                        Text('Withdraw',style: TextStyle(color: Color(0xff043655),fontSize: 16),)
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(bottom: 18.0),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                       SvgPicture.asset('svg/usdx.svg'),
                        SizedBox(width: 10,),
                        Text('USD Package',style: TextStyle(color: Color(0xff043655),fontSize: 16),)
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(bottom: 18.0),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                       SvgPicture.asset('svg/coinx.svg'),
                        SizedBox(width: 10,),
                        Text('USD Rate',style: TextStyle(color: Color(0xff043655),fontSize: 16),)
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(bottom: 18.0),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                       SvgPicture.asset('svg/goldx.svg'),
                        SizedBox(width: 10,),
                        Text('Gold Coin',style: TextStyle(color: Color(0xff043655),fontSize: 16),)
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(bottom: 18.0),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                       SvgPicture.asset('svg/refx.svg'),
                        SizedBox(width: 10,),
                        Text('Referral History',style: TextStyle(color: Color(0xff043655),fontSize: 16),)
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(bottom: 18.0),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                       SvgPicture.asset('svg/support.svg'),
                        SizedBox(width: 10,),
                        Text('Support/Help',style: TextStyle(color: Color(0xff043655),fontSize: 16),)
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(bottom: 18.0),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        SvgPicture.asset('svg/logout.svg'),
                        SizedBox(width: 10,),
                        Text('Logout',style: TextStyle(color: Color(0xff043655),fontSize: 16),)
                      ],
                    ),
                  ),

                ],
              ),
            )
            
          ],
        ),
      ),
    );
  }
}