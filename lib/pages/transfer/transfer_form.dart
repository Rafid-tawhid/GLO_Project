import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../utils/drawer.dart';
import '../../utils/my_appbar.dart';
import '../deposits/deposit_form.dart';

class TransferForm extends StatefulWidget {
  const TransferForm({Key? key}) : super(key: key);
  static const String routeName='/transfer_form';

  @override
  State<TransferForm> createState() => _TransferFormState();
}

class _TransferFormState extends State<TransferForm> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: MyDrawer(),
      appBar: myAppbar(),

      body: ListView(
        children: [
          SizedBox(height: 14,),
          Padding(
            padding: const EdgeInsets.all(6.0),
            child: Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(
                      color: Colors.grey,
                      width: 1
                  )
              ),
              child: Stack(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(

                      mainAxisSize: MainAxisSize.min,
                      children: [
                        SizedBox(height: 30,),
                        Text('I Wallet Transfer Form',style: TextStyle(color: Colors.blue,fontSize: 16,fontWeight: FontWeight.bold),),
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
                                  'User ID:',
                                  textAlign: TextAlign.start,
                                  style: TextStyle(color: Colors.grey),
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                TextFormField(
                                  decoration: InputDecoration(
                                      labelText: '  Enter user ID',
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
                                          child: SvgPicture.asset('svg/wallet.svg',height: 20,)
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
                                  'Amount:',
                                  textAlign: TextAlign.start,
                                  style: TextStyle(color: Colors.grey),
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                TextFormField(
                                  decoration: InputDecoration(
                                      labelText: '  Enter amount',
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
                                SizedBox(height: 3,),
                                Text('4.9% charge applicable',style: TextStyle(color: Colors.blue,fontSize: 14),),
                                SizedBox(
                                  height: 7,
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

                                      labelText: '  Enter pin',
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
                                          child: SvgPicture.asset('svg/trx.svg',height: 20,)
                                      ),
                                      border: OutlineInputBorder(
                                          borderRadius: BorderRadius.circular(5),
                                          borderSide: BorderSide(
                                              color: Color(0xff043655),
                                              width: 5
                                          )
                                      )),
                                ),
                                SizedBox(height: 25,),
                                Container(
                                  height: .5,
                                  padding: EdgeInsets.only(left: 12,right: 12),
                                  width: MediaQuery.of(context).size.width,
                                  color: Colors.grey,),
                                SizedBox(height: 15,),



                                Container(
                                    width: MediaQuery.of(context).size.width,
                                    child: ElevatedButton(
                                        style: ElevatedButton.styleFrom(
                                            backgroundColor: Color((0xffFFD504))),
                                        onPressed: () {
                                          TransactionSucess(context);
                                        },
                                        child: Row(
                                          mainAxisSize: MainAxisSize.min,
                                          children: [
                                            SvgPicture.asset('svg/nike.svg',height: 15,width: 15,),
                                            SizedBox(width: 5,),
                                            Text('Submit',style: TextStyle(color: Color((0xff043655))),),
                                          ],
                                        )))
                              ],
                            ),
                          ),
                        ),

                      ],
                    ),
                  ),
                  Positioned(
                    right: 0,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        decoration: BoxDecoration(
                          color: Color(0xff043655),
                          borderRadius: BorderRadius.circular(5),

                        ),
                        alignment: Alignment.center,
                        padding: new EdgeInsets.all(0.0),

                        width: 20.0,
                        height: 20,
                        child: IconButton(
                            padding: new EdgeInsets.all(0.0),
                            onPressed: (){
                              Navigator.pop(context);
                            }, icon: Icon(Icons.close,color: Colors.white,size: 18,)),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
