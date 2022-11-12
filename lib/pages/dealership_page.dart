import 'package:flutter/material.dart';
import 'package:glo_project/utils/my_appbar.dart';

import '../pages/login_register/login_page.dart';
import '../upgrade_page/upgrade_page.dart';
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
      appBar: myAppbar(),
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


}
Widget premiumDealership(double width, BuildContext context) {
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
                    child: InkWell(
                      onTap: (){
                        Navigator.pushNamed(context, UpgradePage.routeName);
                      },
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
Widget standardDealership(double width, BuildContext context) {
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
Widget personalDealership(double width, BuildContext context) {
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
