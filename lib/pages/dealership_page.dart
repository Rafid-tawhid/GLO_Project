import 'package:flutter/material.dart';

import '../pages/login_register/login_page.dart';
import '../utils/constants.dart';

class DealershipPage extends StatefulWidget {
  const DealershipPage({Key? key}) : super(key: key);
  static const String routeName = '/dealer';
  @override
  State<DealershipPage> createState() => _DealershipPageState();
}

class _DealershipPageState extends State<DealershipPage> {
  bool switchVal = true;
  @override
  Widget build(BuildContext context) {
    var height=MediaQuery.of(context).size.height;
    var width=MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
          elevation: 0,
          toolbarHeight: 60.0,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(10),
              bottomRight: Radius.circular(10),
            ),
          ),
          centerTitle: true,
          leading: IconButton(
            icon: Icon(Icons.menu, color: Colors.grey, size: 30),
            onPressed: () {
              Navigator.pushNamed(context, LoginPage.routeName);
            },
          ),
          actions: [
            Container(
              padding: EdgeInsets.only(right: 10),

              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  IconButton(
                    icon: CircleAvatar(
                      backgroundColor: Color(0xff8E8E93),
                      child: Image.asset(
                        'images/profile.png',
                        fit: BoxFit.cover,
                      ),
                    ),
                    onPressed: () {},
                  ),
                  Text(
                    '01682832598',
                    style: TextStyle(color: Colors.black, fontSize: 10),
                  ),
                ],
              ),
            ),
          ],
          backgroundColor: Colors.yellowAccent,
          title: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Container(
                  padding: EdgeInsets.only(left: 2),
                  margin: EdgeInsets.only(bottom: 8, right: 10),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: lightBgSecondaryColor,
                  ),
                  width: 70,
                  height: 12,
                  child: Stack(
                    clipBehavior: Clip.none,
                    children: [
                      Row(
                        children: [
                          SizedBox(
                            width: 20,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 2.0),
                            child: Text(
                              '\$ 10000',
                              style: myStyle(
                                  7, lightBgPrimaryColor, FontWeight.w700),
                            ),
                          ),
                        ],
                      ),
                      Positioned(
                        right: -5,
                        top: -2,
                        child: Image.asset('images/i.png', height: 15),
                      ),
                    ],
                  )),
              Image.asset(
                'images/glo.png',
                height: 50,
                fit: BoxFit.contain,
              ),
              Container(
                  alignment: Alignment.center,
                  padding: EdgeInsets.only(left: 2),
                  margin: EdgeInsets.only(bottom: 8, left: 7),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: lightBgSecondaryColor,
                  ),
                  width: 70,
                  height: 12,
                  child: Stack(
                    clipBehavior: Clip.none,
                    children: [
                      Row(
                        children: [
                          SizedBox(
                            width: 20,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 2.0),
                            child: Text(
                              '\$ 10000',
                              style: myStyle(
                                  7, lightBgPrimaryColor, FontWeight.w700),
                            ),
                          ),
                        ],
                      ),
                      Positioned(
                        left: -5,
                        top: -2,
                        child: Image.asset('images/c.png', height: 15),
                      ),
                    ],
                  )),
            ],
          )),
      body: ListView(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                height: 5,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('Yearly'),
                  Switch(
                      value: switchVal,
                      onChanged: (value) {
                        setState(() {
                          switchVal = !switchVal;
                          switchVal = value;
                        });
                      }),
                  Text('Monthly')
                ],
              ),
              SizedBox(
                height: 10,
              ),
              premiumDealership(width, context),
              SizedBox(height: 10,),
              standardDealership(width, context),
              SizedBox(height: 10,),
              personalDealership(width,context)
            ],
          ),
        ],
      ),
    );
  }

  Padding premiumDealership(double width, BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        height: 520,
        width: width,
        decoration: BoxDecoration(
            color: Color(0xffFEF5E5),
            borderRadius: BorderRadius.circular(12),
            border: Border.all(color:Color(0xffFAA60C),width: 2 )
        ),
        child: Stack(
          children: [
            Positioned(right: 0, child: Image.asset('images/premium.png')),
            Column(
              children: [
                SizedBox(height: 15,),
                Text('\$129/Monthly',style: TextStyle(fontSize: 28,color: Color(0xffFAA60C)),),
                SizedBox(height: 5,),
                Text('Official Dealership Account',style: TextStyle(fontSize: 20,color: Colors.black),),
                SizedBox(height: 15,),
                Padding(
                  padding: const EdgeInsets.all(8),
                  child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(6),
                        color: const Color(0XFFFAA60C),
                      ),
                      width: MediaQuery.of(context).size.width,
                      child: Padding(
                        padding: EdgeInsets.all(6),
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset('images/dollar_coin.png',height: 22,),
                            Text(' Upgrade Now',style: TextStyle(color: Colors.white),)
                          ],
                        ),
                      )
                  ),
                ),
                SizedBox(height: 10,),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 15.0),
                        child: Icon(Icons.check,color: Colors.orangeAccent,),
                      ),
                      SizedBox(width: 3,),
                      Text('I Wallet Transfer 2% Commission')
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 15.0),
                        child: Icon(Icons.check,color: Colors.orangeAccent,),
                      ),
                      SizedBox(width: 3,),
                      Text('I Wallet Received 2% Commission')
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 15.0),
                        child: Icon(Icons.check,color: Colors.orangeAccent,),
                      ),
                      SizedBox(width: 3,),
                      Text('(I2C||C2I) Wallet Convert Charge 2%')
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 15.0),
                        child: Icon(Icons.check,color: Colors.orangeAccent,),
                      ),
                      SizedBox(width: 3,),
                      Text('I wallet Bank Withdrawal Charge 14.9%')
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 15.0),
                        child: Icon(Icons.check,color: Colors.orangeAccent,),
                      ),
                      SizedBox(width: 3,),
                      Text('Bank or Card Deposit 3% Commission')
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 15.0),
                        child: Icon(Icons.check,color: Colors.orangeAccent,),
                      ),
                      SizedBox(width: 3,),
                      Text('Every Country Only 5 Dealership Accounts')
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 15.0),
                        child: Icon(Icons.check,color: Colors.orangeAccent,),
                      ),
                      SizedBox(width: 3,),
                      Text('I Wallet (B2D||D2B) Transfer Free')
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 15.0),
                        child: Icon(Icons.check,color: Colors.orangeAccent,),
                      ),
                      SizedBox(width: 3,),
                      Text('Withdrawal Pack Buying 7% Commission')
                    ],
                  ),
                )

              ],
            )
          ],
        ),
      ),
    );
  }
  Padding standardDealership(double width, BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        height: 520,
        width: width,
        decoration: BoxDecoration(
            color: Color(0xffF0E5F7),
            borderRadius: BorderRadius.circular(12),
            border: Border.all(color:Color(0xff770ABC),width: 2 )
        ),
        child: Stack(
          children: [
            Positioned(right: 0, child: Image.asset('images/standard.png')),
            Column(
              children: [
                SizedBox(height: 15,),
                Text('\$49/Monthly',style: TextStyle(fontSize: 28,color: Color(0xffFAA60C)),),
                SizedBox(height: 5,),
                Text('Official Bussiness Account',style: TextStyle(fontSize: 20,color: Colors.black),),
                SizedBox(height: 15,),
                Padding(
                  padding: const EdgeInsets.all(8),
                  child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(6),
                        color: const Color(0XFF770ABC),
                      ),
                      width: MediaQuery.of(context).size.width,
                      child: Padding(
                        padding: EdgeInsets.all(6),
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset('images/dollar_coin.png',height: 22,),
                            Text(' Upgrade Now',style: TextStyle(color: Colors.white),)
                          ],
                        ),
                      )
                  ),
                ),
                SizedBox(height: 10,),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 15.0),
                        child: Icon(Icons.check,color: Color(0xff770ABC),),
                      ),
                      SizedBox(width: 3,),
                      Text('I Wallet Transfer 2% Commission')
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 15.0),
                        child: Icon(Icons.check,color:  Color(0xff770ABC),),
                      ),
                      SizedBox(width: 3,),
                      Text('I Wallet Received 2% Commission')
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 15.0),
                        child: Icon(Icons.check,color:  Color(0xff770ABC),),
                      ),
                      SizedBox(width: 3,),
                      Text('(I2C||C2I) Wallet Convert Charge 2%')
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 15.0),
                        child: Icon(Icons.check,color: Color(0xff770ABC),),
                      ),
                      SizedBox(width: 3,),
                      Text('I wallet Bank Withdrawal Charge 14.9%')
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 15.0),
                        child: Icon(Icons.check,color: Color(0xff770ABC),),
                      ),
                      SizedBox(width: 3,),
                      Text('Bank or Card Deposit 3% Commission')
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 15.0),
                        child: Icon(Icons.check,color:  Color(0xff770ABC),),
                      ),
                      SizedBox(width: 3,),
                      Text('Every Country Only 5 Dealership Accounts')
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 15.0),
                        child: Icon(Icons.check,color:  Color(0xff770ABC),),
                      ),
                      SizedBox(width: 3,),
                      Text('I Wallet (B2D||D2B) Transfer Free')
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 15.0),
                        child: Icon(Icons.check,color:  Color(0xff770ABC),),
                      ),
                      SizedBox(width: 3,),
                      Text('Withdrawal Pack Buying 7% Commission')
                    ],
                  ),
                )

              ],
            )
          ],
        ),
      ),
    );
  }
  Padding personalDealership(double width, BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        height: 520,
        width: width,
        decoration: BoxDecoration(
            color: Color(0xffE5F3FC),
            borderRadius: BorderRadius.circular(12),
            border: Border.all(color:Color(0xff0A8FE6),width: 2 )
        ),
        child: Stack(
          children: [
            Positioned(right: 0, child: Image.asset('images/basic.png')),
            Column(
              children: [
                SizedBox(height: 15,),
                Text('\$3/Yearly',style: TextStyle(fontSize: 28,color: Color(0xff0A8FE6)),),
                SizedBox(height: 5,),
                Text('Official Personal Account',style: TextStyle(fontSize: 20,color: Colors.black),),
                SizedBox(height: 15,),
                Padding(
                  padding: const EdgeInsets.all(8),
                  child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(6),
                        color: const Color(0XFF0A8FE6),
                      ),
                      width: MediaQuery.of(context).size.width,
                      child: Padding(
                        padding: EdgeInsets.all(6),
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset('images/dollar_coin.png',height: 22,),
                            Text(' Upgrade Now',style: TextStyle(color: Colors.white),)
                          ],
                        ),
                      )
                  ),
                ),
                SizedBox(height: 10,),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 15.0),
                        child: Icon(Icons.check,color: Color(0xff0A8FE6),),
                      ),
                      SizedBox(width: 3,),
                      Text('I Wallet Transfer 2% Commission')
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 15.0),
                        child: Icon(Icons.check,color:  Color(0xff0A8FE6),),
                      ),
                      SizedBox(width: 3,),
                      Text('I Wallet Received 2% Commission')
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 15.0),
                        child: Icon(Icons.check,color:   Color(0xff0A8FE6),),
                      ),
                      SizedBox(width: 3,),
                      Text('(I2C||C2I) Wallet Convert Charge 2%')
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 15.0),
                        child: Icon(Icons.check,color: Color(0xff0A8FE6),),
                      ),
                      SizedBox(width: 3,),
                      Text('I wallet Bank Withdrawal Charge 14.9%')
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 15.0),
                        child: Icon(Icons.check,color:  Color(0xff0A8FE6),),
                      ),
                      SizedBox(width: 3,),
                      Text('Bank or Card Deposit 3% Commission')
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 15.0),
                        child: Icon(Icons.check,color:  Color(0xff0A8FE6),),
                      ),
                      SizedBox(width: 3,),
                      Text('Every Country Only 5 Dealership Accounts')
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 15.0),
                        child: Icon(Icons.check,color: Color(0xff0A8FE6),),
                      ),
                      SizedBox(width: 3,),
                      Text('I Wallet (B2D||D2B) Transfer Free')
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 15.0),
                        child: Icon(Icons.check,color:  Color(0xff0A8FE6),),
                      ),
                      SizedBox(width: 3,),
                      Text('Withdrawal Pack Buying 7% Commission')
                    ],
                  ),
                )

              ],
            )
          ],
        ),
      ),
    );
  }
}
