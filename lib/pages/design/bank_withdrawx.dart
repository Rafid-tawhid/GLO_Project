import 'package:flutter/material.dart';
import 'package:glo_ticket/utils/constants.dart';
import 'package:glo_ticket/utils/drawer.dart';
import 'package:glo_ticket/utils/my_appbar.dart';

class BankWithdrawx extends StatelessWidget {
  static String routeName='withdrawx';
  const BankWithdrawx({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
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
                  SizedBox(height: 10,),

                  Text('** Withdraw process may take 1 hour to 72 hours **',style: TextStyle(color: Colors.redAccent),),
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
                                  Image.asset('images/bankx.png',height: 36,),
                                  SizedBox(height: 5,),
                                  Text('Bank withdraw',style: TextStyle(color: dark),)
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
                                  Image.asset('images/customerx.png',height: 36,),
                                  SizedBox(height: 5,),
                                  Text('Bank withdraw',style: TextStyle(color: dark),)
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
                  Text('Please Select a Payment Method For Withdrawal',style: TextStyle(color: Colors.blue),),
                  SizedBox(height: 5,),
                  Divider(),
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
                        child: InkWell(
                          onTap: (){
                            showModalBottomSheet(
                              context: context,
                              isScrollControlled: true,
                              builder: (BuildContext context) {
                                return FractionallySizedBox(
                                  heightFactor: 0.9,
                                  child: Container(
                                    child: Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Card(
                                        child: ListView(
                                          shrinkWrap: true,
                                          padding: EdgeInsets.symmetric(vertical: 20,horizontal: 10),
                                          children: [

                                            Stack(
                                              alignment: Alignment.center,
                                              children: [
                                                Align(
                                                  alignment: Alignment.topLeft,
                                                  child: Column(
                                                    
                                                    mainAxisSize: MainAxisSize.min,
                                                    crossAxisAlignment: CrossAxisAlignment.start,
                                                    children: [
                                                      Padding(
                                                        padding: const EdgeInsets.only(top: 12.0),
                                                        child: Text('Withdraw With STC Pay',style: TextStyle(color: dark,fontSize: 16),),
                                                      ),
                                                      SizedBox(height: 10,),
                                                      Divider(),
                                                    ],
                                                  ),
                                                ),

                                                 Positioned(
                                                    right: 0,
                                                    top: 0,
                                                    child: IconButton(icon: Icon(Icons.close),onPressed: (){Navigator.pop(context);},)),
                                              ],
                                            ),
                                            const SizedBox(height: 20,),
                                            Container(
                                              alignment: Alignment.center,
                                              decoration: BoxDecoration(
                                                color: Color(0xffF1F1F2),
                                                borderRadius: BorderRadius.circular(6),
                                              ),
                                              child: Padding(
                                                padding: const EdgeInsets.all(8.0),
                                                child: Image.asset('images/Stc_pay.png',height: 40,),
                                              ),
                                            ),
                                            SizedBox(height: 15,),
                                            Text('Withdraw process may take 1 hour to 72 hours',style: TextStyle(fontSize: 14,),textAlign: TextAlign.center,),
                                            SizedBox(height: 14,),
                                            Divider(),
                                            Align(
                                                alignment: Alignment.center,
                                                child: Text('Withdrawal Rate :',style: TextStyle(color: mainColor,fontSize: 16),)),
                                            SizedBox(height: 10,),

                                            Container(
                                              alignment: Alignment.center,
                                              decoration: BoxDecoration(
                                                color: Color(0xffF1F1F2),
                                                borderRadius: BorderRadius.circular(6),
                                              ),
                                              child: Padding(
                                                padding: const EdgeInsets.all(8.0),
                                                child: Text('** STC Pay (1USD = 3.64 SAR) **',style: TextStyle(color: Colors.red),),
                                              ),
                                            ),
                                            SizedBox(height: 16,),
                                            Text(
                                              'Account',
                                              textAlign: TextAlign.start,
                                              style: TextStyle(color: dark),
                                            ),
                                            SizedBox(
                                              height: 5,
                                            ),
                                            TextFormField(
                                              decoration: InputDecoration(
                                                  labelText: '  Enter Pay Id or Account',
                                                  enabledBorder:OutlineInputBorder(
                                                    borderSide: const BorderSide(color: Color(0xff043655), width: .5),
                                                  ),
                                                  labelStyle: TextStyle(color: Colors.grey),
                                                  isDense: true,
                                                  contentPadding:
                                                  EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                                                  border: OutlineInputBorder(
                                                      borderRadius: BorderRadius.circular(5),
                                                      borderSide: BorderSide(
                                                          color: Color(0xff043655),
                                                          width: 5
                                                      )
                                                  )),
                                            ),
                                            SizedBox(height: 10,),
                                            Text(
                                              'Amount',
                                              textAlign: TextAlign.start,
                                              style: TextStyle(color: dark),
                                            ),
                                            SizedBox(
                                              height: 5,
                                            ),
                                            TextFormField(
                                              decoration: InputDecoration(
                                                  labelText: '  Enter Amount',
                                                  enabledBorder:OutlineInputBorder(
                                                    borderSide: const BorderSide(color: Color(0xff043655), width: .5),
                                                  ),
                                                  labelStyle: TextStyle(color: Colors.grey),
                                                  isDense: true,
                                                  contentPadding:
                                                  EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                                                  border: OutlineInputBorder(
                                                      borderRadius: BorderRadius.circular(5),
                                                      borderSide: BorderSide(
                                                          color: Color(0xff043655),
                                                          width: 5
                                                      )
                                                  )),
                                            ),
                                            SizedBox(height: 10,),
                                            Text(
                                              'Your Pin',
                                              textAlign: TextAlign.start,
                                              style: TextStyle(color: dark),
                                            ),
                                            SizedBox(
                                              height: 5,
                                            ),
                                            TextFormField(
                                              decoration: InputDecoration(
                                                  labelText: '  Enter pin',
                                                  enabledBorder:OutlineInputBorder(
                                                    borderSide: const BorderSide(color: Color(0xff043655), width: .5),
                                                  ),
                                                  labelStyle: TextStyle(color: Colors.grey),
                                                  isDense: true,
                                                  contentPadding:
                                                  EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                                                  border: OutlineInputBorder(
                                                      borderRadius: BorderRadius.circular(5),
                                                      borderSide: BorderSide(
                                                          color: Color(0xff043655),
                                                          width: 5
                                                      )
                                                  )),
                                            ),
                                            SizedBox(height: 20,),
                                            Align(
                                                alignment: Alignment.topRight,
                                                child: ElevatedButton(onPressed: (){}, child: Text('Submit')))

                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                );
                              },
                            );
                          },
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
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
