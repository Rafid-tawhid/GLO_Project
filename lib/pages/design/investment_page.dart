import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:glo_ticket/utils/constants.dart';

import '../../utils/drawer.dart';
import '../../utils/my_appbar.dart';

class InvestmentPage extends StatefulWidget {
  const InvestmentPage({super.key});
  static const String routeName='/investment';

  @override
  State<InvestmentPage> createState() => _InvestmentPageState();
}

class _InvestmentPageState extends State<InvestmentPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: myAppbar(context),
      drawer: MyDrawer(),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8.0),
          child: Card(
            child: ListView(
              shrinkWrap: true,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text('LOCKING YOUR MONEY TO OUR WEBSITE',style: TextStyle(fontSize: 16,color: Colors.blue,fontWeight: FontWeight.bold),textAlign: TextAlign.center,),
                ),
                Text('IS A PERFECT',style: TextStyle(fontSize: 18,color: deeporange,fontWeight: FontWeight.bold),textAlign: TextAlign.center,),
                Text('INVESTMENT',style: TextStyle(fontSize: 36,color: Colors.deepPurple,fontWeight: FontWeight.bold),textAlign: TextAlign.center,),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Image.asset('images/invetsment.png'),
                ),
                SizedBox(height: 10,),
                Text('(Up to 40% annual interest)',textAlign: TextAlign.center,style: TextStyle(fontSize: 16),),
                SizedBox(height: 10,),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 40.0),
                  child: Text('Earn up to 40% annual interest on your USD. At maturity, the USD & interest will be Credited back to your account automatically.',textAlign: TextAlign.center,style: TextStyle(fontSize: 12,color: Colors.grey),),
                ),
                SizedBox(height: 10,),
                Container(
                  width: MediaQuery.sizeOf(context).width ,
                  height: .2,
                  color: Colors.grey,
                ),

                SizedBox(height: 10,),
                Align(child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 14.0,vertical: 5),
                  child: Text('Select period of time:',style: TextStyle(color: dark),),
                ),alignment: Alignment.topLeft,),
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
                        hintText: '  Select period of time:',
                        errorStyle:TextStyle() ,
                        suffixIcon: Icon(Icons.arrow_drop_down_outlined),
                        contentPadding: EdgeInsets.symmetric(horizontal: 10, vertical: 4),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5),
                        )),

                  ),
                ),
                Align(child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 14.0,vertical: 5),
                  child: Text('Enter amount:',style: TextStyle(color: dark),),
                ),alignment: Alignment.topLeft,),
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
                        errorStyle:TextStyle() ,
                        contentPadding: EdgeInsets.symmetric(horizontal: 10, vertical: 0),

                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5),
                        )),

                  ),
                ),
                SizedBox(height: 10,),
                Text('Maturity amount (0 USD)',style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold,color: Colors.red),textAlign: TextAlign.center,),
                Padding(
                  padding:  EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        width: 120,
                        child: ElevatedButton(onPressed: (){},style: ElevatedButton.styleFrom(backgroundColor: deeporange), child:  Padding(
                          padding: EdgeInsets.symmetric(horizontal: 0.0),
                          child: Text('INVEST NOW',style: TextStyle(color: dark),),
                        ),),
                      ),
                    ],
                  ),
                ),
                Text('Investment history',style: TextStyle(fontSize: 16,color: dark),textAlign: TextAlign.center,),
                SizedBox(height: 10,),
                Container(
                  width: MediaQuery.sizeOf(context).width ,
                  height: .2,
                  color: Colors.grey,
                ),
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
                                        Text('Return Amount:',style: TextStyle(fontSize: 14,color: Color(0xff043655)),)
                                      ],
                                    ),
                                    Text('\$5445')
                                  ],
                                ),
                                SizedBox(height: 5,),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Row(
                                      mainAxisSize: MainAxisSize.min,
                                      children: [
                                        SvgPicture.asset('svg/lotteryx.svg'),
                                        SizedBox(width: 5,),
                                        Text('Interest Rate:',style: TextStyle(fontSize: 14,color: Color(0xff043655)),)
                                      ],
                                    ),
                                    Text('40%')
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
                                        Text('Period:',style: TextStyle(fontSize: 14,color: Color(0xff043655)),)
                                      ],
                                    ),
                                    Text('360 Days')
                                  ],
                                ),
                                SizedBox(height: 5,),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Row(
                                      mainAxisSize: MainAxisSize.min,
                                      children: [
                                        SvgPicture.asset('svg/s_lock.svg',height: 14,),
                                        SizedBox(width: 5,),
                                        Text('Unlock Date:',style: TextStyle(fontSize: 14,color: Color(0xff043655)),)
                                      ],
                                    ),
                                    Text('14-07-2022 03:03 PM',style: TextStyle(fontSize: 14,color: Color(0xff043655)),)
                                  ],
                                ),
                              ],
                            ),
                          ),
                          SizedBox(height: 10,),
                          Container(
                              width: MediaQuery.sizeOf(context).width,
                              alignment: Alignment.center,
                              margin: EdgeInsets.symmetric(horizontal: 20),
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                borderRadius: BorderRadius.circular(6)
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text('Remaining time to unlock',style: TextStyle(color: dark,fontSize: 16,fontWeight: FontWeight.w700),),
                              )),
                          SizedBox(height: 6,),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text('257D: 17H: 4M: 32S',style: TextStyle(fontSize: 18,color: Colors.red),)
                            ],
                          ),
                          SizedBox(height: 10,),
                          Padding(
                            padding: const EdgeInsets.only(left: 8.0,top: 5),
                            child: Container(
                              decoration: const BoxDecoration(
                                color: Colors.black,
                                image: DecorationImage(
                                  image:AssetImage("images/btn_bg.png"),
                                  fit:BoxFit.cover,
                                ),
                                borderRadius: BorderRadius.all(Radius.circular(4)),

                              ),
                              child: Padding(
                                padding: const EdgeInsets.only(left: 14.0,right: 14,top: 6,bottom: 6),
                                child: Text('Running',style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white),),
                              ),

                            ),
                          ),
                          SizedBox(height: 10,),
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
                                        Text('Return Amount:',style: TextStyle(fontSize: 14,color: Color(0xff043655)),)
                                      ],
                                    ),
                                    Text('\$5445')
                                  ],
                                ),
                                SizedBox(height: 5,),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Row(
                                      mainAxisSize: MainAxisSize.min,
                                      children: [
                                        SvgPicture.asset('svg/lotteryx.svg'),
                                        SizedBox(width: 5,),
                                        Text('Interest Rate:',style: TextStyle(fontSize: 14,color: Color(0xff043655)),)
                                      ],
                                    ),
                                    Text('40%')
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
                                        Text('Period:',style: TextStyle(fontSize: 14,color: Color(0xff043655)),)
                                      ],
                                    ),
                                    Text('360 Days')
                                  ],
                                ),
                                SizedBox(height: 5,),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Row(
                                      mainAxisSize: MainAxisSize.min,
                                      children: [
                                        SvgPicture.asset('svg/s_lock.svg',height: 14,),
                                        SizedBox(width: 5,),
                                        Text('Unlock Date:',style: TextStyle(fontSize: 14,color: Color(0xff043655)),)
                                      ],
                                    ),
                                    Text('14-07-2022 03:03 PM',style: TextStyle(fontSize: 14,color: Color(0xff043655)),)
                                  ],
                                ),
                              ],
                            ),
                          ),
                          SizedBox(height: 10,),
                          Container(
                              width: MediaQuery.sizeOf(context).width,
                              alignment: Alignment.center,
                              margin: EdgeInsets.symmetric(horizontal: 20),
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(6)
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text('Remaining time to unlock',style: TextStyle(color: dark,fontSize: 16,fontWeight: FontWeight.w700),),
                              )),
                          SizedBox(height: 6,),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text('COMPLETED',style: TextStyle(fontSize: 18,color: Colors.red),)
                            ],
                          ),
                          SizedBox(height: 10,),
                          Padding(
                            padding: const EdgeInsets.only(left: 8.0,top: 5),
                            child: Container(
                              decoration: const BoxDecoration(
                                color: Colors.blue,
                                // image: DecorationImage(
                                //   image:AssetImage("images/btn_bg.png"),
                                //   fit:BoxFit.cover,
                                // ),
                                borderRadius: BorderRadius.all(Radius.circular(6)),

                              ),
                              child: Padding(
                                padding: const EdgeInsets.only(left: 10.0,right: 10,top: 6,bottom: 6),
                                child: Text('Completed',style: TextStyle(fontWeight: FontWeight.bold,color: dark),),
                              ),

                            ),
                          ),
                          SizedBox(height: 10,),
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
      ),
    );
  }
}
