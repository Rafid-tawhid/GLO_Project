import 'package:flutter/material.dart';

import '../../utils/constants.dart';
import '../../utils/drawer.dart';
import '../../utils/my_appbar.dart';

class DepositBankx extends StatefulWidget {
  static const String routeName='/deposit_bank';
  const DepositBankx({super.key});

  @override
  State<DepositBankx> createState() => _DepositBankxState();
}

class _DepositBankxState extends State<DepositBankx> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: myAppbar(context),
      drawer: MyDrawer(),
      body: SafeArea(
        child: Scaffold(
          body: Padding(
            padding: const EdgeInsets.all(12.0),
            child: Card(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text('** Get \$5 bonus for your first deposit **',style: TextStyle(color: Colors.redAccent),),
                  SizedBox(height: 10,),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10.0),
                    child: Row(
                      children: [
                        Expanded(
                          child: Card(
                            child: Padding(
                              padding: const EdgeInsets.all(4.0),
                              child: Column(
                                children: [
                                  Image.asset('images/customerx.png',height: 36,),
                                  SizedBox(height: 5,),
                                  Text('Contact Depositor',style: TextStyle(color: dark),)
                                ],
                              ),
                            ),
                          ),
                        ),
                        SizedBox(width: 16,),
                        Expanded(
                          child: Card(
                            child: Padding(
                              padding: const EdgeInsets.all(4.0),
                              child: Column(
                                children: [
                                  Image.asset('images/supportx.png',height: 36,),
                                  SizedBox(height: 5,),
                                  Text('Deposit Support',style: TextStyle(color: dark),)
                                ],
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 5,),
                  Divider(),
                  SizedBox(height: 8,),
                  Text('Up to 10% Deposit Bonus',style: TextStyle(color: Colors.blue),),
                  const SizedBox(height: 5,),
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 60.0),
                    child: Divider(),
                  ),
                  SizedBox(height: 8,),
                  Row(
                    children: [
                      Expanded(
                        child: Card(
                          child: Padding(
                            padding: const EdgeInsets.all(4.0),
                            child: Container(
                                height: 56,
                                child: Padding(
                                  padding: const EdgeInsets.all(14.0),
                                  child: Image.asset('images/perfectmoney-logo.png',fit: BoxFit.cover,),
                                )),
                          ),
                        ),
                      ),
                      SizedBox(width: 10,),
                      Expanded(
                        child: Card(
                          child: Padding(
                            padding: const EdgeInsets.all(4.0),
                            child: Container(
                                height: 56,
                                child: Padding(
                                  padding: const EdgeInsets.all(10.0),
                                  child: Image.asset('images/PayPal-Logo.png',height: 36,fit: BoxFit.contain,),
                                )),
                          ),
                        ),
                      ),
                      SizedBox(width: 10,),
                      Expanded(
                        child: Card(
                          child: Padding(
                            padding: const EdgeInsets.all(4.0),
                            child: Container(
                                height: 56,
                                child: Padding(
                                  padding: const EdgeInsets.all(10.0),
                                  child: Image.asset('images/tether.png',height: 36,fit: BoxFit.contain,),
                                )),
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 10,),
                  Row(
                    children: [
                      Expanded(
                        child: Card(
                          child: Padding(
                            padding: const EdgeInsets.all(4.0),
                            child: Container(
                                height: 56,
                                child: Padding(
                                  padding: const EdgeInsets.all(0.0),
                                  child: Image.asset('images/Binance-Logo.wine.png',fit: BoxFit.cover,),
                                )),
                          ),
                        ),
                      ),
                      SizedBox(width: 10,),
                      Expanded(
                        child: Card(
                          child: Padding(
                            padding: const EdgeInsets.all(4.0),
                            child: Container(
                                height: 56,
                                child: Padding(
                                  padding: const EdgeInsets.all(0.0),
                                  child: Image.asset('images/ur_pay.png',height: 36,fit: BoxFit.contain,),
                                )),
                          ),
                        ),
                      ),
                      SizedBox(width: 10,),
                      Expanded(
                        child: Card(
                          child: Padding(
                            padding: const EdgeInsets.all(4.0),
                            child: Container(
                                height: 56,
                                child: Padding(
                                  padding: const EdgeInsets.all(10.0),
                                  child: Image.asset('images/Paytm_Logo.png',height: 36,fit: BoxFit.contain,),
                                )),
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 10,),
                  Row(
                    children: [
                      Expanded(
                        child: Card(
                          child: Padding(
                            padding: const EdgeInsets.all(4.0),
                            child: Container(
                                height: 56,
                                child: Padding(
                                  padding: const EdgeInsets.all(10.0),
                                  child: Image.asset('images/upi.png',fit: BoxFit.contain,),
                                )),
                          ),
                        ),
                      ),
                      SizedBox(width: 10,),
                      Expanded(
                        child: Card(
                          child: Padding(
                            padding: const EdgeInsets.all(4.0),
                            child: Container(
                                height: 56,
                                child: Padding(
                                  padding: const EdgeInsets.all(14.0),
                                  child: Image.asset('images/Google_Pay_Logo.svg.png',height: 36,fit: BoxFit.contain,),
                                )),
                          ),
                        ),
                      ),
                      SizedBox(width: 10,),
                      Expanded(
                        child: Card(
                          child: Padding(
                            padding: const EdgeInsets.all(4.0),
                            child: Container(
                                height: 56,
                                child: Padding(
                                  padding: const EdgeInsets.all(4.0),
                                  child: Image.asset('images/PhonePe_Logo.svg.png',height: 36,fit: BoxFit.contain,),
                                )),
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 10,),
                  Row(
                    children: [
                      Expanded(
                        child: Card(
                          child: Padding(
                            padding: const EdgeInsets.all(4.0),
                            child: Container(
                                height: 56,
                                child: Padding(
                                  padding: const EdgeInsets.all(0.0),
                                  child: Image.asset('images/Stc_pay.png',fit: BoxFit.contain,),
                                )),
                          ),
                        ),
                      ),
                      SizedBox(width: 10,),
                      Expanded(
                        child: Card(
                          child: Padding(
                            padding: const EdgeInsets.all(4.0),
                            child: Container(
                                height: 56,
                                child: Padding(
                                  padding: const EdgeInsets.all(4.0),
                                  child: Image.asset('images/nagat.png',height: 36,fit: BoxFit.contain,),
                                )),
                          ),
                        ),
                      ),
                      SizedBox(width: 10,),
                      Expanded(
                        child: Card(
                          child: Padding(
                            padding: const EdgeInsets.all(4.0),
                            child: Container(
                                height: 56,
                                child: Padding(
                                  padding: const EdgeInsets.all(4.0),
                                  child: Image.asset('images/Bkash-logo.png',height: 36,fit: BoxFit.contain,),
                                )),
                          ),
                        ),
                      ),

                    ],
                  ),
                  SizedBox(height: 10,),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20.0),
                    child: Text('After completing deposit, please contact our support @GloTicket_bot for instant reflect balance to your account',textAlign: TextAlign.center,style: TextStyle(color: Color(0xff8D8B8B)),),
                  ),
                  SizedBox(height: 20,)
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
