import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:glo_ticket/pages/design/investment_page.dart';
import 'package:glo_ticket/pages/home_page.dart';
import 'package:glo_ticket/utils/constants.dart';

import 'package:shared_preferences/shared_preferences.dart';

import '../helper_functions/user_info.dart';
import '../pages/dealership_page.dart';
import '../pages/design/deposit_bank.dart';
import '../pages/design/bank_withdrawx.dart';
import '../pages/design/pack_details.dart';
import '../pages/design/pack_details_bank.dart';
import '../pages/design/security_money.dart';
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
            const SizedBox(height: 20,),
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
              padding: const EdgeInsets.only(left: 30,top: 12),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(bottom: 18.0),
                    child: InkWell(
                      onTap: (){
                        Navigator.pushNamed(context, HomePage.routeName);
                      },
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                         SvgPicture.asset('svg/transferx.svg'),
                          const SizedBox(width: 10,),
                          const Text('Dashboard',style: TextStyle(color: Color(0xff043655),fontSize: 16),)
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 18.0),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        SvgPicture.asset('svg/upgradex.svg'),
                        const SizedBox(width: 10,),
                        const Text('Upgrade Account',style: TextStyle(color: Color(0xff043655),fontSize: 16),)
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 18.0),
                    child: InkWell(
                      onTap: (){
                        Navigator.pushNamed(context, DepositBankx.routeName);
                      },
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          SvgPicture.asset('svg/depositx.svg'),
                          const SizedBox(width: 10,),
                          const Text('Deposit',style: TextStyle(color: Color(0xff043655),fontSize: 16),)
                        ],
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: (){
                      Navigator.pushNamed(context, InvestmentPage.routeName);
                    },
                    child: Padding(
                      padding: const EdgeInsets.only(bottom: 18.0),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          SvgPicture.asset('svg/investmentx.svg'),
                          const SizedBox(width: 10,),
                          const Text('Investment',style: TextStyle(color: Color(0xff043655),fontSize: 16),)
                        ],
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: (){
                      Navigator.pushNamed(context, PackDetailsEwallet.routeName);
                    },
                    child: Padding(
                      padding: const EdgeInsets.only(bottom: 18.0),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          SvgPicture.asset('svg/transferx.svg'),
                          const SizedBox(width: 10,),
                          const Text('Transfer',style: TextStyle(color: Color(0xff043655),fontSize: 16),)
                        ],
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: (){
                      Navigator.pushNamed(context, PackDetailsEwallet.routeName);
                    },
                    child: Padding(
                      padding: const EdgeInsets.only(bottom: 18.0),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                         SvgPicture.asset('svg/lotteryx.svg'),
                          const SizedBox(width: 10,),
                          const Text('Lotteries',style: TextStyle(color: Color(0xff043655),fontSize: 16),)
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 18.0),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                       SvgPicture.asset('svg/hourglass.svg'),
                        const SizedBox(width: 10,),
                        const Text('Results',style: TextStyle(color: Color(0xff043655),fontSize: 16),)
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 18.0),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                       SvgPicture.asset('svg/history.svg'),
                        const SizedBox(width: 10,),
                        const Text('Lotteries History',style: TextStyle(color: Color(0xff043655),fontSize: 16),)
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 18.0),
                    child: InkWell(
                      onTap: (){
                        Navigator.pushNamed(context, BankWithdrawx.routeName);
                      },
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                         SvgPicture.asset('svg/withdrawx.svg'),
                          const SizedBox(width: 10,),
                          const Text('Withdraw',style: TextStyle(color: Color(0xff043655),fontSize: 16),)
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 18.0),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                       SvgPicture.asset('svg/usdx.svg'),
                        const SizedBox(width: 10,),
                        const Text('USD Package',style: TextStyle(color: Color(0xff043655),fontSize: 16),)
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 18.0),
                    child: InkWell(
                      onTap: (){
                        Navigator.pushNamed(context, PackDetailsEwallet.routeName);
                      },
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                         SvgPicture.asset('svg/coinx.svg'),
                          const SizedBox(width: 10,),
                          const Text('USD Rate',style: TextStyle(color: Color(0xff043655),fontSize: 16),)
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 18.0),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                       SvgPicture.asset('svg/goldx.svg'),
                        const SizedBox(width: 10,),
                        const Text('Gold Coin',style: TextStyle(color: Color(0xff043655),fontSize: 16),)
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 18.0),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                       SvgPicture.asset('svg/refx.svg'),
                        const SizedBox(width: 10,),
                        const Text('Referral History',style: TextStyle(color: Color(0xff043655),fontSize: 16),)
                      ],
                    ),
                  ),
                  InkWell(
                    onTap: (){
                      Navigator.pushNamed(context, SecurityMoney.routeName);
                    },
                    child: Padding(
                      padding: const EdgeInsets.only(bottom: 18.0),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                         SvgPicture.asset('svg/support.svg'),
                          const SizedBox(width: 10,),
                          const Text('Support/Help',style: TextStyle(color: Color(0xff043655),fontSize: 16),)
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 18.0),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        SvgPicture.asset('svg/logout.svg'),
                        const SizedBox(width: 10,),
                        const Text('Logout',style: TextStyle(color: Color(0xff043655),fontSize: 16),)
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