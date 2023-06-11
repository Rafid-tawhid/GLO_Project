import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../utils/constants.dart';
import '../../utils/drawer.dart';
import '../../utils/my_appbar.dart';

class EWalletWithdrawForm extends StatefulWidget {
  static const String routeName='/ewallet_dts';
  const EWalletWithdrawForm({Key? key}) : super(key: key);

  @override
  State<EWalletWithdrawForm> createState() => _EWalletWithdrawFormState();
}

class _EWalletWithdrawFormState extends State<EWalletWithdrawForm> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: MyDrawer(),
      appBar: myAppbar(context),

      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.all(8),
            child: Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(
                      color: Colors.grey,
                      width: 1
                  )
              ),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(

                  mainAxisSize: MainAxisSize.min,
                  children: [
                    SizedBox(height: 15,),
                    const Text('E-Wallet Withdrawal Form',style: TextStyle(color: Color(0XFF00A9FF),fontSize: 16,fontWeight: FontWeight.bold),),

                    SizedBox(height: 15,),
                    Container(
                      height: .5,
                      padding: EdgeInsets.only(left: 12,right: 12),
                      width: MediaQuery.of(context).size.width,
                      color: Colors.grey,),


                    Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: Form(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(
                              height: 10,
                            ),
                            const Text(
                              'Method:',
                              textAlign: TextAlign.start,
                              style: TextStyle(color: Colors.grey),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            DropdownButtonFormField(
                              isDense: true,
                              validator: (value) {
                                if (value == null) {
                                  return 'Select a City';
                                } else {
                                  return null;
                                }
                              },
                              decoration:  InputDecoration(
                                prefixIcon: Container(
                                  decoration: BoxDecoration(
                                      color: Color(0xffE9ECEF),
                                      borderRadius: BorderRadius.circular(5),
                                      border: Border.all(
                                          width: 1,
                                          color: Color(0xff043655)
                                      )
                                  ),
                                  alignment: Alignment.center,
                                  padding: new EdgeInsets.only(left: 12.0,right: 12),
                                  width: 20.0,
                                  height: 20,
                                  child: SvgPicture.asset('svg/method.svg',height: 20,width: 25,),
                                ),
                                contentPadding:EdgeInsets.symmetric(horizontal: 10),
                                border: OutlineInputBorder(
                                    borderSide: BorderSide(
                                        color: Color(0xff043655),
                                        width: 1
                                    ),
                                    borderRadius: BorderRadius.all(Radius.circular(5))),
                              ),
                              hint: Text('  Select payment account'),
                              // value: amounts,
                              onChanged: (value) {
                                setState(() {
                                  // amounts = value!;
                                });
                              },
                              items: cityName
                                  .map((e) => DropdownMenuItem(
                                child: SizedBox(child: new Text(e)),
                                value: e,
                              ))
                                  .toList(),
                            ),


                            SizedBox(
                              height: 10,
                            ),

                            Text(
                              'Pay ID / Account:',
                              textAlign: TextAlign.start,
                              style: TextStyle(color: Colors.grey),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            TextFormField(
                              decoration: InputDecoration(
                                  labelText: '  Enter Pay ID or Account',
                                  enabledBorder:OutlineInputBorder(
                                    borderSide: const BorderSide(color: Color(0xff043655), width: 1.0),
                                  ),
                                  labelStyle: TextStyle(color: Colors.grey),
                                  isDense: true,
                                  contentPadding:
                                  EdgeInsets.symmetric(horizontal: 0, vertical: 0),
                                  prefixIcon: Container(

                                      decoration: BoxDecoration(
                                          color: Color(0xffE9ECEF),
                                          borderRadius: BorderRadius.circular(5),
                                          border: Border.all(
                                              width: 1,
                                              color: Color(0xff043655)
                                          )
                                      ),
                                      alignment: Alignment.center,
                                      padding: new EdgeInsets.all(0.0),
                                      width: 20.0,
                                      height: 20,
                                      child: Icon(Icons.person,color: darkBlue,size: 22,)
                                  ),
                                  border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(5),
                                      borderSide: BorderSide(
                                          color: Color(0xff043655),
                                          width: 5
                                      )
                                  )),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              'Enter Amount:',
                              textAlign: TextAlign.start,
                              style: TextStyle(color: Colors.grey),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            TextFormField(
                              decoration: InputDecoration(
                                  labelText: '  Enter Amount',
                                  enabledBorder:OutlineInputBorder(
                                    borderSide: const BorderSide(color: Color(0xff043655), width: 1.0),
                                  ),
                                  labelStyle: TextStyle(color: Colors.grey),
                                  isDense: true,
                                  contentPadding:
                                  EdgeInsets.symmetric(horizontal: 0, vertical: 0),
                                  prefixIcon: Container(
                                    decoration: BoxDecoration(
                                        color: Color(0xffE9ECEF),
                                        borderRadius: BorderRadius.circular(5),
                                        border: Border.all(
                                            width: 1,
                                            color: Color(0xff043655)
                                        )
                                    ),
                                    alignment: Alignment.center,
                                    padding: new EdgeInsets.all(0.0),
                                    width: 15.0,
                                    height: 20,
                                    child: Padding(
                                      padding: const EdgeInsets.only(left: 10.0,right: 10),
                                      child: SvgPicture.asset('svg/charge.svg',height: 20,width: 15,),
                                    ),
                                  ),
                                  border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(5),
                                      borderSide: BorderSide(
                                          color: Color(0xff043655),
                                          width: 5
                                      )
                                  )),
                            ),
                            SizedBox(
                              height: 10,
                            ),


                            Text(
                              'Pin:',
                              textAlign: TextAlign.start,
                              style: TextStyle(color: Colors.grey),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            TextFormField(
                              decoration: InputDecoration(

                                  labelText: '  Enter Pin',
                                  labelStyle: TextStyle(color: Colors.grey),
                                  enabledBorder:OutlineInputBorder(
                                    borderSide: const BorderSide(color: Color(0xff043655), width: 1.0),
                                  ),
                                  isDense: true,
                                  contentPadding:
                                  EdgeInsets.symmetric(horizontal: 0, vertical: 0),
                                  prefixIcon: Container(
                                      decoration: BoxDecoration(
                                          color: Color(0xffE9ECEF),
                                          borderRadius: BorderRadius.circular(5),
                                          border: Border.all(
                                              width: 1,
                                              color: Color(0xff043655)
                                          )
                                      ),
                                      alignment: Alignment.center,
                                      padding: new EdgeInsets.all(0.0),
                                      width: 20.0,
                                      height: 20,
                                      child: Icon(Icons.search,color: darkBlue,size: 25,)
                                  ),
                                  border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(5),
                                      borderSide: BorderSide(
                                          color: Color(0xff043655),
                                          width: 5
                                      )
                                  )),
                            ),

                            SizedBox(height: 40,),
                            Container(
                              height: 1,
                              color: Color(0xff043655),
                              padding: EdgeInsets.all(20),
                              width: MediaQuery.of(context).size.width,
                            ),
                            SizedBox(height: 30,),

                            Padding(
                              padding: const EdgeInsets.only(left: 15.0,right: 15),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                children: [
                                  Expanded(
                                    child: Container(
                                        child: ElevatedButton(
                                            style: ElevatedButton.styleFrom(
                                                backgroundColor: Color((0xff2E3192))),
                                            onPressed: () {
                                              //  TransactionSucess(context);
                                            },
                                            child: Row(
                                              mainAxisSize: MainAxisSize.min,
                                              children: [

                                                Text('Cancel',style: TextStyle(color: Colors.white),),
                                              ],
                                            ))),
                                  ),
                                  SizedBox(width: 15,),
                                  Expanded(
                                    flex: 2,
                                    child: Container(
                                        child: ElevatedButton(
                                            style: ElevatedButton.styleFrom(
                                                backgroundColor: Color((0xffFFD504))),
                                            onPressed: () {
                                            //  ShowWithdrawUpgrade(context);
                                            },
                                            child: Row(
                                              mainAxisSize: MainAxisSize.min,
                                              children: [
                                                Icon(Icons.shopping_cart,color: Color(0xff043655),size: 20,),
                                                SizedBox(width: 5,),
                                                Text('Submit',style: TextStyle(color: Color((0xff043655))),),
                                              ],
                                            ))),
                                  ),
                                ],
                              ),
                            ),

                          ],
                        ),
                      ),
                    ),

                  ],
                ),
              ),
            ),
          ),


        ],
      ),
    );
  }
}
