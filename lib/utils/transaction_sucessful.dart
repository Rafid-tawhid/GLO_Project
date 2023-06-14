import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'constants.dart';

class TransactionSucessful extends StatelessWidget {
  const TransactionSucessful({Key? key}) : super(key: key);
  static const String routeName='/transaction_sucess';

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: SafeArea(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Card(
              child: ListView(
                shrinkWrap: true,
                padding: EdgeInsets.symmetric(vertical: 20,horizontal: 10),
                children: [

                  Stack(
                    alignment: Alignment.center,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 12.0),
                        child: Image.asset('images/all_logo.png'),
                      ),
                      const Positioned(
                        right: 0,
                          top: 0,
                          child: Icon(Icons.close)),
                    ],
                  ),
                  const SizedBox(height: 20,),
                  Image.asset('images/tick.png',height: 70,width: 70,),
                  SizedBox(height: 15,),
                  Text('Transaction Sucessful!',style: TextStyle(fontSize: 22,color: mainColor,fontWeight: FontWeight.w500),textAlign: TextAlign.center,),
                  SizedBox(height: 40,),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('Form Account',style: TextStyle(color: mainColor),),
                        Text('3232332232323',style: TextStyle(color: mainColor),)
                      ],
                    ),
                  ),
                  Container(height: 2,color: mainColor,),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('Receving Account',style: TextStyle(color: mainColor),),
                        Text('3232332232323',style: TextStyle(color: mainColor),)
                      ],
                    ),
                  ),
                  Container(height: 2,color: mainColor,),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('Amount Paid',style: TextStyle(color: mainColor),),
                        Text('\$3223.00',style: TextStyle(color: mainColor),)
                      ],
                    ),
                  ),
                  Container(height: 2,color: mainColor,),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('Transaction Date:',style: TextStyle(color: mainColor),),
                        Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Text('17 Apr 2023',style: TextStyle(color: mainColor),),
                            Text('11.22.33pm',style: TextStyle(color: mainColor,fontSize: 12),),
                          ],
                        )
                      ],
                    ),
                  ),
                  Container(height: 2,color: mainColor,),
                  SizedBox(height: 30,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Container(
                        width: 150,
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(
                            color: mainColor,
                            width: 1
                          )
                        ),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 8),
                          child: Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Icon(Icons.download_sharp,color: mainColor,size: 16,),
                              SizedBox(width: 5,),
                              Text('DOWNLOAD',style: TextStyle(color: mainColor,fontWeight: FontWeight.w500),)
                            ],
                          ),
                        ),
                      ),
                      Container(
                        width: 150,
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(
                            color: mainColor,
                            width: 1
                          )
                        ),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 8),
                          child: Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Icon(Icons.share,color: mainColor,size: 16,),
                              SizedBox(width: 5,),
                              Text('SHARE',style: TextStyle(color: mainColor,fontWeight: FontWeight.w500),)
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 20,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        width: 170,
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                            color: mainColor,
                            borderRadius: BorderRadius.circular(10),
                            border: Border.all(
                                color: mainColor,
                                width: 1
                            )
                        ),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(vertical: 8.0,horizontal: 0),
                          child: Text(' ANOTHER PAYMENT',style: TextStyle(color: Colors.white),),
                        ),
                      ),
                    ],
                  )

                ],
              ),
            ),
          ),
        ),
      )
    );
  }
}
