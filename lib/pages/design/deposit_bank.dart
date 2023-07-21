import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

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
                        child: InkWell(
                          onTap: (){
                            showModalBottomSheet(
                              context: context,
                              isScrollControlled: true,
                              builder: (BuildContext context) {
                                return FractionallySizedBox(
                                  heightFactor: 0.9,
                                  child: ListView(
                                    shrinkWrap: true,
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
                                                    child: InkWell(
                                                      onTap: (){
                                                        Navigator.pop(context);
                                                      },
                                                      child: Padding(
                                                        padding: const EdgeInsets.all(0.0),
                                                        child: Icon(Icons.close,color: dark,),
                                                      ),
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
                                    child: Image.asset('images/Binance-Logo.wine.png',fit: BoxFit.cover,),
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
                        child: InkWell(
                          onTap: (){
                            showModalBottomSheet(
                              context: context,
                              isScrollControlled: true,
                              builder: (BuildContext context) {
                                return FractionallySizedBox(
                                  heightFactor: 0.9,
                                  child: ListView(
                                    shrinkWrap: true,
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
                                                    child: InkWell(
                                                      onTap: (){
                                                        Navigator.pop(context);
                                                      },
                                                      child: Padding(
                                                        padding: const EdgeInsets.all(0.0),
                                                        child: Icon(Icons.close,color: dark,),
                                                      ),
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
                                                  padding: const EdgeInsets.symmetric(horizontal: 70.0,vertical: 7),
                                                  child: Image.asset('images/PhonePe_Logo.svg.png',fit: BoxFit.contain,),
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
                                                        Text('Phone pay',style: TextStyle(color: Colors.redAccent),),
                                                        Text('(1USD = ₹82.4 )',style: TextStyle(color: Colors.redAccent),),
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
                                                    const Align(alignment: Alignment.topLeft,
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
                                                    const Align(alignment: Alignment.topLeft,
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
                                                    const Align(alignment: Alignment.topLeft,
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
                                  )
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
                                    padding: const EdgeInsets.all(4.0),
                                    child: Image.asset('images/PhonePe_Logo.svg.png',height: 36,fit: BoxFit.contain,),
                                  )),
                            ),
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
