import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:glo_ticket/pages/dealership_page.dart';
import 'package:glo_ticket/pages/deposits/deposit_form.dart';
import 'package:glo_ticket/pages/design/deposit_bank.dart';
import 'package:glo_ticket/pages/design/bank_withdrawx.dart';
import 'package:glo_ticket/pages/design/binance.dart';
import 'package:glo_ticket/pages/design/investment_page.dart';
import 'package:glo_ticket/pages/design/pack_details.dart';
import 'package:glo_ticket/pages/design/pack_details_bank.dart';
import 'package:glo_ticket/pages/design/phone_pay.dart';
import 'package:glo_ticket/pages/design/security_money.dart';
import 'package:glo_ticket/pages/design/stc_pay.dart';
import 'package:glo_ticket/pages/profile_popup_pages/edit_bank_withdraw_details.dart';
import 'package:glo_ticket/pages/profile_popup_pages/edit_profile_page.dart';
import 'package:glo_ticket/pages/profile_popup_pages/exchange_rate.dart';
import 'package:glo_ticket/pages/home_page.dart';
import 'package:glo_ticket/pages/login_register/forget_password.dart';
import 'package:glo_ticket/pages/login_register/login_page.dart';
import 'package:glo_ticket/pages/login_register/varify_page.dart';
import 'package:glo_ticket/pages/profile_popup_pages/pin_setting.dart';
import 'package:glo_ticket/pages/profile_popup_pages/profile_page.dart';
import 'package:glo_ticket/pages/profile_popup_pages/saudia_page.dart';
import 'package:glo_ticket/pages/ticket_info/buy_lottery_tickets.dart';
import 'package:glo_ticket/pages/ticket_info/buy_lottery_tickets_single.dart';
import 'package:glo_ticket/pages/ticket_info/latest_lottery_result.dart';
import 'package:glo_ticket/pages/ticket_info/lottery_ticket_history.dart';
import 'package:glo_ticket/pages/ticket_info/national_ticket_result.dart';
import 'package:glo_ticket/pages/ticket_info/pcso_lottery_page.dart';
import 'package:glo_ticket/pages/ticket_info/ticket_referal_history.dart';
import 'package:glo_ticket/pages/transfer/transfer.dart';
import 'package:glo_ticket/pages/transfer/transfer_form.dart';
import 'package:glo_ticket/pages/upgrade_page.dart';
import 'package:glo_ticket/pages/welcome/anim_welcome.dart';
import 'package:glo_ticket/pages/welcome/test.dart';
import 'package:glo_ticket/pages/welcome/welcome_dashboard.dart';
import 'package:glo_ticket/pages/welcome/welcome_page.dart';
import 'package:glo_ticket/pages/welcome/winprize_page.dart';
import 'package:glo_ticket/pages/withdraw/bank_withdraw_details.dart';
import 'package:glo_ticket/pages/withdraw/ewallet_withdraw_form.dart';
import 'package:glo_ticket/pages/withdraw/withdrawal_page.dart';
import 'package:glo_ticket/providers/user_provider.dart';
import 'package:glo_ticket/utils/transaction_sucessful.dart';
import 'package:provider/provider.dart';

import 'pages/deposits/deposit_page.dart';
import 'pages/login_register/login_welcome.dart';
import 'pages/ticket_info/lottery_price.dart';
import 'pages/ticket_info/national_ticket_prize.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_)=>UserProvider())
      ],
      child: MaterialApp(
        builder: EasyLoading.init(),
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        color: Color(0xff2E3192),

        theme: ThemeData(
          primaryColor: Color(0xff2E3192),
        ),


        initialRoute: WelcomePage.routeName,
        routes: {
          WelcomePage.routeName:(context)=>const WelcomePage(),
          WelcomeAnim.routeName:(context)=>WelcomeAnim(),
          CarouselDemo.routeName:(context)=>CarouselDemo(),
          WelcomeDashboard.routeName:(context)=>const WelcomeDashboard(),
          BuyTicketPage.routeName:(context)=>BuyTicketPage(),
          WinPrizePage.routeName:(context)=>const WinPrizePage(),
          LoginPage.routeName:(context)=>LoginPage(),
          ForgetPassword.routeName:(context)=>ForgetPassword(),
          RegistrationWelcome.routeName:(context)=>RegistrationWelcome(),
          VerificationPage.routeName:(context)=>const VerificationPage(),
          UpgradePage.routeName:(context)=>UpgradePage(),
          HomePage.routeName:(context)=>HomePage(),
          DealershipPage.routeName:(context)=>DealershipPage(),
          // BuyTicketPage.routeName:(context)=>BuyTicketPage(),
          NationalTicketPageResult.routeName:(context)=>const NationalTicketPageResult(),
          LatestLotteryResult.routeName:(context)=>const LatestLotteryResult(),
          LotteryTicketPrize.routeName:(context)=>const LotteryTicketPrize(),
          DepositPage.routeName:(context)=>const DepositPage(),
          DepositForm.routeName:(context)=>DepositForm(),
          TransferPage.routeName:(context)=>TransferPage(),
          TransferForm.routeName:(context)=>TransferForm(),
          LotteryTicketHistory.routeName:(context)=>LotteryTicketHistory(),
          ReferralHistory.routeName:(context)=>ReferralHistory(),
          WithdrawPage.routeName:(context)=>WithdrawPage(),
          BankWithdrawDetails.routeName:(context)=>BankWithdrawDetails(),
          EWalletWithdrawForm.routeName:(context)=>EWalletWithdrawForm(),
          PCSOLotteryTickets.routeName:(context)=>PCSOLotteryTickets(),
          NationalTicketPrize.routeName:(context)=>NationalTicketPrize(),
          BuyLotteryTicketsSingle.routeName:(context)=>BuyLotteryTicketsSingle(),
          ExchangeRatePage.routeName:(context)=>ExchangeRatePage(),
          Profile_page.routeName:(context)=>Profile_page(),
          EditProfilePage.routeName:(context)=>EditProfilePage(),
          SaudiaPages.routeName:(context)=>SaudiaPages(),
          PinSettingPage.routeName:(context)=>PinSettingPage(),
          EditBankWithdrawDetails.routeName:(context)=>EditBankWithdrawDetails(),
          TransactionSucessful.routeName:(context)=>TransactionSucessful(),
          PackDetailsBank.routeName:(context)=>PackDetailsBank(),
          PackDetailsEwallet.routeName:(context)=>PackDetailsEwallet(),
          BankWithdrawx.routeName:(context)=>BankWithdrawx(),
          DepositBankx.routeName:(context)=>DepositBankx(),
          InvestmentPage.routeName:(context)=>InvestmentPage(),
          SecurityMoney.routeName:(context)=>SecurityMoney(),
        },
      ),
    );
  }
}

