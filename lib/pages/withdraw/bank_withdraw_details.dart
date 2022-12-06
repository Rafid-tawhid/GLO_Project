import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:glo_project/pages/upgrade_page.dart';

import '../../utils/constants.dart';
import '../../utils/drawer.dart';
import '../../utils/my_appbar.dart';
import '../transfer/transfer_form.dart';

class BankWithdrawDetails extends StatefulWidget {
  const BankWithdrawDetails({Key? key}) : super(key: key);
  static const String routeName='withdraw_dts';

  @override
  State<BankWithdrawDetails> createState() => _BankWithdrawDetailsState();
}

class _BankWithdrawDetailsState extends State<BankWithdrawDetails> {
 // String amounts='00';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: MyDrawer(),
      appBar: myAppbar(),

      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 6.0,right: 6),
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
                    Text('Bank Withdraw Details',style: TextStyle(color: darkBlue,fontSize: 16,fontWeight: FontWeight.bold),),
                    SizedBox(height: 5,),
                    Text('(See Withdraw Rate)',style: TextStyle(color: Colors.blue),),
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
                            Text(
                              'Withdraw Amount:',
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
                              hint: Text('  Select Amount'),
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

                            SizedBox(height: 2,),
                            Text('14.9% charge applicable',style: TextStyle(color: Colors.blue),),
                            SizedBox(
                              height: 10,
                            ),

                            Text(
                              'Bank Account:',
                              textAlign: TextAlign.start,
                              style: TextStyle(color: Colors.grey),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            TextFormField(
                              decoration: InputDecoration(
                                  labelText: '  Enter Bank Account',
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
                                      child: Icon(Icons.edit_calendar,color: darkBlue,size: 22,)
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
                              'Account Name:',
                              textAlign: TextAlign.start,
                              style: TextStyle(color: Colors.grey),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            TextFormField(
                              decoration: InputDecoration(
                                  labelText: '  Enter Account Name',
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
                                    child: IconButton(
                                        padding: new EdgeInsets.only(right: 0.0),
                                        onPressed: (){
                                          Navigator.pop(context);
                                        }, icon: Icon(Icons.person,color: Color(0xff043655),size: 25,)),
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
                              'Bank Name:',
                              textAlign: TextAlign.start,
                              style: TextStyle(color: Colors.grey),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            TextFormField(
                              decoration: InputDecoration(

                                  labelText: '  Enter Bank Name',
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
                                      child: Icon(Icons.home,color: darkBlue,size: 25,)
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
                              'Bank Branch:',
                              textAlign: TextAlign.start,
                              style: TextStyle(color: Colors.grey),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            TextFormField(
                              decoration: InputDecoration(

                                  labelText: '  Enter Bank Branch',
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
                                      child: Icon(Icons.home,color: darkBlue,size: 25,)
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
                              'Phone Number:',
                              textAlign: TextAlign.start,
                              style: TextStyle(color: Colors.grey),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            TextFormField(
                              decoration: InputDecoration(

                                  labelText: '  Enter Phone Number',
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
                                      child: Icon(Icons.call,color: darkBlue,size: 22,)
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
                                              ShowWithdrawUpgrade(context);
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

  void ShowWithdrawUpgrade(BuildContext context) {
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          contentPadding: EdgeInsets.zero,
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(10.0))
          ),
          content: Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                border: Border.all(
                    color: Colors.grey,
                    width: 1
                )
            ),
            child: Column(

              mainAxisSize: MainAxisSize.min,
              children: [
                Image.asset('images/transfer_bg.png',fit: BoxFit.cover,),
                SizedBox(height: 30,),
                Container(
                  width: 200,
                    child: Text('For Withdrawal, you have to upgrade your account',style: TextStyle(color: Colors.blue,fontWeight: FontWeight.bold,),textAlign: TextAlign.center,)),
                SizedBox(height: 30,),
                Container(
                  width: MediaQuery.of(context).size.width,
                  margin: EdgeInsets.only(left: 10,right: 10),
                  color: Colors.grey.shade200,
                  height: 2,
                ),
                SizedBox(height: 20,),
                Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: Container(

                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(5.0),
                          child: SvgPicture.asset('svg/cancel_btn.svg',height: 35,fit: BoxFit.fitHeight,),
                        ),
                        Expanded(
                          child: InkWell(
                            onTap: (){
                              Navigator.pushNamed(context, UpgradePage.routeName);
                            },
                            child: Padding(
                              padding: const EdgeInsets.all(5.0),
                              child: SvgPicture.asset('svg/upgrade_btn.svg',height: 35,fit: BoxFit.fitWidth,),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        );

      },);
  }
}
