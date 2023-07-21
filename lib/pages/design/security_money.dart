import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../utils/constants.dart';
import '../../utils/drawer.dart';
import '../../utils/my_appbar.dart';

class SecurityMoney extends StatefulWidget {
  const SecurityMoney({super.key});
  static const String routeName='/security';

  @override
  State<SecurityMoney> createState() => _SecurityMoneyState();
}

class _SecurityMoneyState extends State<SecurityMoney> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: myAppbar(context),
      drawer: MyDrawer(),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Card(
          child: ListView(
            children: [
              SizedBox(height: 10,),
              Text('SECURITY MONEY',style: TextStyle(fontSize: 28,color: Colors.blue,fontWeight: FontWeight.bold),textAlign: TextAlign.center,),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 80.0,vertical: 20),
                child: Image.asset('images/security.png',fit: BoxFit.contain,),
              ),

              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 40.0),
                child: Text('If you want to be our earning partner like Official Business or Official Dealership account, you have to pay security money.',textAlign: TextAlign.center,style: TextStyle(fontSize: 12,color: Colors.grey),),
              ),
              SizedBox(height: 5,),
              Container(
                width: MediaQuery.sizeOf(context).width ,
                height: .2,
                color: Colors.grey,
              ),
              SizedBox(height: 10,),
              Text('Enter Amount',style: TextStyle(fontSize: 18,color: dark,fontWeight: FontWeight.w500),textAlign: TextAlign.center,),
              SizedBox(height: 10,),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 14.0),
                child: TextFormField(
                  validator: (value){
                    if(value==null||value.isEmpty){
                      return 'Required Your Name';
                    }
                    else {
                      return null;
                    }
                  },
                  decoration: InputDecoration(
                      hintText: '  Enter amount (Min 100 USD)',
                      contentPadding:  EdgeInsets.symmetric(horizontal: 10, vertical: 0),

                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5),
                      )),

                ),
              ),
              SizedBox(height: 10,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: 120,
                    child: ElevatedButton(onPressed: (){},style: ElevatedButton.styleFrom(backgroundColor: deeporange), child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Icon(Icons.shopping_cart,color: dark,weight: 10,),
                        Text('Submit',style: TextStyle(color: dark),),
                      ],
                    ),),
                  ),
                ],
              ),
              SizedBox(height: 10,),
              Text('Security Money History',style: TextStyle(fontSize: 20,color: dark,fontWeight: FontWeight.w500),textAlign: TextAlign.center,),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  width: MediaQuery.sizeOf(context).width ,
                  height: .2,
                  color: Colors.grey,
                ),
              ),
              Text('Current Security Money: \$500.00',style: TextStyle(fontSize: 18,color: Colors.blue,fontWeight: FontWeight.w500),textAlign: TextAlign.center,),
              SizedBox(height: 10,),
              Padding(
                padding: const EdgeInsets.only(left: 8.0,right: 8),
                child: Card(
                  elevation: 2,
                  shadowColor: Colors.yellow,
                  child: Container(
                    padding: EdgeInsets.only(top: 10,bottom: 10),
                    decoration: BoxDecoration(
                        color: Color(0xffE8EDF6),
                        borderRadius: BorderRadius.all(Radius.circular(6)),
                        boxShadow: [
                          BoxShadow(
                              color: Color(0xffFFD504),
                              spreadRadius: -1.0,
                              blurRadius: 1.0,
                              offset: Offset(0, 3,)
                          )
                        ]

                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 8.0,right: 8),
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: [
                                  Column(
                                    mainAxisSize: MainAxisSize.min,
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text('SI#3',style: TextStyle(fontSize: 14,color: Color(0xff043655)),),
                                      SizedBox(height: 5,),
                                      Row(
                                        mainAxisSize: MainAxisSize.min,
                                        children: [
                                          SvgPicture.asset('svg/calendar.svg'),
                                          SizedBox(width: 5,),
                                          Text('14-07-2022 03:03 PM',style: TextStyle(fontSize: 14,color: Color(0xff043655)),)
                                        ],
                                      )
                                    ],
                                  ),
                                  Text('\$10,000.00')
                                ],
                              ),
                              SizedBox(height: 5,),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Row(
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      SvgPicture.asset('svg/code.svg'),
                                      SizedBox(width: 5,),
                                      Text(' CODE NO:',style: TextStyle(fontSize: 14,color: Color(0xff043655)),)
                                    ],
                                  ),
                                  Text('\#3084')
                                ],
                              ),
                              SizedBox(height: 5,),

                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Row(
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      SvgPicture.asset('svg/charge.svg'),
                                      SizedBox(width: 4,),
                                      Text('Security Amount:',style: TextStyle(fontSize: 14,color: Color(0xff043655)),)
                                    ],
                                  ),
                                  Text('\$5445')
                                ],
                              ),

                            ],
                          ),
                        ),
                        SizedBox(height: 10,),
                        Padding(
                          padding: const EdgeInsets.only(left: 8.0,right: 8),
                          child: Container(
                            decoration: BoxDecoration(
                                color: Colors.green,
                                borderRadius: BorderRadius.circular(6)
                            ),
                            child:  Padding(
                              padding: const EdgeInsets.only(left: 24.0,right: 24,top: 6,bottom: 6),
                              child: Text('Active',style: TextStyle(fontWeight: FontWeight.bold,color: dark),),
                            ),
                          ),
                        ),


                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(height: 20,),
              Padding(
                padding: const EdgeInsets.only(left: 8.0,right: 8),
                child: Card(
                  elevation: 2,
                  shadowColor: Colors.yellow,
                  child: Container(
                    padding: EdgeInsets.only(top: 10,bottom: 10),
                    decoration: BoxDecoration(
                        color: Color(0xffE8EDF6),
                        borderRadius: BorderRadius.all(Radius.circular(6)),
                        boxShadow: [
                          BoxShadow(
                              color: Color(0xffFFD504),
                              spreadRadius: -1.0,
                              blurRadius: 1.0,
                              offset: Offset(0, 3,)
                          )
                        ]

                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 8.0,right: 8),
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: [
                                  Column(
                                    mainAxisSize: MainAxisSize.min,
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text('SI#3',style: TextStyle(fontSize: 14,color: Color(0xff043655)),),
                                      SizedBox(height: 5,),
                                      Row(
                                        mainAxisSize: MainAxisSize.min,
                                        children: [
                                          SvgPicture.asset('svg/calendar.svg'),
                                          SizedBox(width: 5,),
                                          Text('14-07-2022 03:03 PM',style: TextStyle(fontSize: 14,color: Color(0xff043655)),)
                                        ],
                                      )
                                    ],
                                  ),
                                  Text('\$10,000.00')
                                ],
                              ),
                              SizedBox(height: 5,),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Row(
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      SvgPicture.asset('svg/code.svg'),
                                      SizedBox(width: 5,),
                                      Text(' CODE NO:',style: TextStyle(fontSize: 14,color: Color(0xff043655)),)
                                    ],
                                  ),
                                  Text('\#3084')
                                ],
                              ),
                              SizedBox(height: 5,),

                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Row(
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      SvgPicture.asset('svg/charge.svg'),
                                      SizedBox(width: 4,),
                                      Text('Security Amount:',style: TextStyle(fontSize: 14,color: Color(0xff043655)),)
                                    ],
                                  ),
                                  Text('\$5445')
                                ],
                              ),

                            ],
                          ),
                        ),
                        SizedBox(height: 10,),
                        Padding(
                          padding: const EdgeInsets.only(left: 8.0,right: 8),
                          child: Container(
                            decoration: BoxDecoration(
                                color: Colors.green,
                                borderRadius: BorderRadius.circular(6)
                            ),
                            child:  Padding(
                              padding: const EdgeInsets.only(left: 24.0,right: 24,top: 6,bottom: 6),
                              child: Text('Active',style: TextStyle(fontWeight: FontWeight.bold,color: dark),),
                            ),
                          ),
                        ),


                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(height: 40,)
            ],
          ),
        ),
      ),
    );
  }
}
