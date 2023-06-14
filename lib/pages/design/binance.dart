import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../utils/constants.dart';
import '../../utils/drawer.dart';
import '../../utils/my_appbar.dart';

class BinancePage extends StatefulWidget {
  const BinancePage({super.key});

  @override
  State<BinancePage> createState() => _BinancePageState();
}

class _BinancePageState extends State<BinancePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: myAppbar(context),
      drawer: MyDrawer(),
      body: SafeArea(
        child: Scaffold(
          body: ListView(
            children: [
              Padding(
                padding: const EdgeInsets.all(12.0),
                child: Card(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Stack(
                        children: [
                          Positioned(
                            right: 0,
                            child: Padding(
                              padding: const EdgeInsets.all(0.0),
                              child: Icon(Icons.close,color: dark,),
                            ),
                          ),
                          Container(height: 22,)
                        ],
                      ),
                      Text('Deposit With Binance Pay ID (USDT)',style: TextStyle(color: dark,fontSize: 18),),
                      SizedBox(height: 10,),
                      const Padding(
                        padding: EdgeInsets.symmetric(horizontal: 16.0),
                        child: Divider(),
                      ),
                      Container(
                        height: 55,
                        margin: EdgeInsets.all(10),
                        width: MediaQuery.sizeOf(context).width,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Color(0xffF1F1F2)
                        ),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 70.0),
                          child: Image.asset('images/Binance-Logo.wine.png',fit: BoxFit.cover,),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 30.0),
                        child: Text('Send money to the following wallet address. After deposit confirmation, your account will be reflected balance.',style: TextStyle(color:grey ),textAlign: TextAlign.center,),
                      ),
                      SizedBox(height: 16,),
                      const Text('Deposit Rate:',style: TextStyle(color: Colors.blue,fontSize: 16),),

                      Container(
                        height: 30,
                        margin: EdgeInsets.all(10),
                        width: MediaQuery.sizeOf(context).width,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(6),
                            color: Color(0xffF1F1F2)
                        ),
                        child: const Padding(
                          padding: EdgeInsets.symmetric(horizontal: 7.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Text('Binance Pay ID (USDT)',style: TextStyle(color: Colors.redAccent),),
                              Text('(1USDT = \$1)',style: TextStyle(color: Colors.redAccent),),
                            ],
                          )
                        ),
                      ),

                      const Text('Deposit With QR Code',style: TextStyle(color: Colors.blue,fontSize: 16),),
                      const Icon(Icons.qr_code_2_outlined,size: 180,),
                      const Text('Scan The QR Code',style: TextStyle(color: Colors.blue,fontSize: 16),),
                      SizedBox(height: 10,),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10.0),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [

                            TextFormField(
                              validator: (value){
                                if(value==null||value.isEmpty){
                                  return 'Required Your Name';
                                }
                                else {
                                  return null;
                                }
                              },
                              decoration: InputDecoration(
                                  hintText: '  2323323232',
                                  isDense: true,
                                  errorStyle:TextStyle() ,
                                  contentPadding: EdgeInsets.symmetric(horizontal: 20, vertical: 0),
                                  prefixIcon: Container(
                                      decoration: BoxDecoration(
                                        color: Color(0xffe9ecef),
                                        border: Border.all(
                                          width: 0.6,
                                          color: dark,
                                        ),
                                        borderRadius: BorderRadius.circular(6),

                                      ),
                                      child: Padding(
                                        padding: const EdgeInsets.symmetric(horizontal: 14,vertical: 13.5),
                                        child: SvgPicture.asset('svg/depositx.svg',),
                                      )),
                                  suffixIcon: Padding(
                                    padding: const EdgeInsets.all(.2),
                                    child: ElevatedButton(onPressed: () {  },
                                      style: ElevatedButton.styleFrom(
                                          backgroundColor: dark
                                      ),
                                      child: Text('copy'),),
                                  ),
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(5),
                                  )),

                            ),
                            SizedBox(height: 10,),
                            Text('Contact support team for any deposit problem',style: TextStyle(color: Colors.redAccent),),
                            SizedBox(height: 5,),
                            Divider(color: Colors.redAccent,height: 1,),
                            SizedBox(height: 30,),
                            Align(alignment: Alignment.topLeft,
                                child: Row(
                                  mainAxisSize: MainAxisSize.min,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text('Amount'),
                                    Icon(Icons.star,color: Colors.redAccent,size: 8,)
                                  ],
                                )),
                            SizedBox(height: 5,),
                            TextFormField(
                              validator: (value){
                                if(value==null||value.isEmpty){
                                  return 'Required Your Name';
                                }
                                else {
                                  return null;
                                }
                              },
                              decoration: InputDecoration(
                                  hintText: '  Enter Amount (Minimum \$20.00) ',
                                  isDense: true,
                                  errorStyle:TextStyle() ,
                                  contentPadding: EdgeInsets.symmetric(horizontal: 20, vertical: 0),
                                  prefixIcon: Container(
                                      decoration: BoxDecoration(
                                        color: Color(0xffe9ecef),
                                        border: Border.all(
                                          width: 0.6,
                                          color: dark,
                                        ),
                                        borderRadius: BorderRadius.circular(6),

                                      ),
                                      child: Padding(
                                        padding: const EdgeInsets.symmetric(horizontal: 14,vertical: 13.5),
                                        child: SvgPicture.asset('svg/depositx.svg',),
                                      )),
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(5),
                                  )),

                            ),
                            SizedBox(height: 10,),
                            Align(alignment: Alignment.topLeft,
                                child: Row(
                                  mainAxisSize: MainAxisSize.min,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text('Transaction ID'),
                                    Icon(Icons.star,color: Colors.redAccent,size: 8,)
                                  ],
                                )),
                            SizedBox(height: 5,),
                            TextFormField(
                              validator: (value){
                                if(value==null||value.isEmpty){
                                  return 'Required Your Name';
                                }
                                else {
                                  return null;
                                }
                              },
                              decoration: InputDecoration(
                                  hintText: '  Your Transaction ID',
                                  isDense: true,
                                  errorStyle:TextStyle() ,
                                  contentPadding: EdgeInsets.symmetric(horizontal: 20, vertical: 0),
                                  prefixIcon: Container(
                                      decoration: BoxDecoration(
                                        color: Color(0xffe9ecef),
                                        border: Border.all(
                                          width: 0.6,
                                          color: dark,
                                        ),
                                        borderRadius: BorderRadius.circular(6),

                                      ),
                                      child: Padding(
                                        padding: const EdgeInsets.symmetric(horizontal: 14,vertical: 13.5),
                                        child: SvgPicture.asset('svg/goldx.svg',),
                                      )),
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(5),
                                  )),

                            ),
                            SizedBox(height: 10,),
                            Align(alignment: Alignment.topLeft,
                                child: Row(
                                  mainAxisSize: MainAxisSize.min,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text('Sending Account'),
                                    Icon(Icons.star,color: Colors.redAccent,size: 8,)
                                  ],
                                )),
                            SizedBox(height: 5,),
                            TextFormField(
                              validator: (value){
                                if(value==null||value.isEmpty){
                                  return 'Required Your Name';
                                }
                                else {
                                  return null;
                                }
                              },
                              decoration: InputDecoration(
                                  hintText: '  Your Account',
                                  isDense: true,
                                  errorStyle:TextStyle() ,
                                  contentPadding: EdgeInsets.symmetric(horizontal: 20, vertical: 0),
                                  prefixIcon: Container(
                                      decoration: BoxDecoration(
                                        color: Color(0xffe9ecef),
                                        border: Border.all(
                                          width: 0.6,
                                          color: dark,
                                        ),
                                        borderRadius: BorderRadius.circular(6),

                                      ),
                                      child: Padding(
                                        padding: const EdgeInsets.symmetric(horizontal: 14,vertical: 13.5),
                                        child: SvgPicture.asset('svg/depositx.svg',),
                                      )),
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(5),
                                  )),

                            ),

                            SizedBox(height: 10,),
                            Align(alignment: Alignment.topLeft,
                                child: Row(
                                  mainAxisSize: MainAxisSize.min,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text('Payment Proof'),
                                    Icon(Icons.star,color: Colors.redAccent,size: 8,)
                                  ],
                                )),
                            SizedBox(height: 5,),
                            TextFormField(
                              validator: (value){
                                if(value==null||value.isEmpty){
                                  return 'Required Your Name';
                                }
                                else {
                                  return null;
                                }
                              },
                              decoration: InputDecoration(
                                  hintText: '  No File Chosen',
                                  isDense: true,
                                  errorStyle:TextStyle() ,
                                  contentPadding: EdgeInsets.symmetric(horizontal: 20, vertical: 0),
                                  prefixIcon: ElevatedButton(onPressed: () {  },
                                    style: ElevatedButton.styleFrom(
                                        backgroundColor: dark
                                    ),
                                    child: Text('Choose File'),),
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(5),
                                  )),

                            ),
                            SizedBox(height: 10,),
                            Align(alignment: Alignment.bottomRight,
                              child: ElevatedButton(onPressed: () {  },
                                style: ElevatedButton.styleFrom(
                                    backgroundColor: orange
                                ),
                                child: Row(
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    SvgPicture.asset('svg/depositx.svg',),
                                    SizedBox(width: 5,),
                                    Text('Submit',style: TextStyle(color: dark),),
                                  ],
                                ),),),
                            SizedBox(height: 20,)
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
