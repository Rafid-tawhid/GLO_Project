import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../utils/drawer.dart';
import '../../utils/my_appbar.dart';
import 'bank_withdraw_details.dart';
import 'ewallet_withdraw_form.dart';

class WithdrawPage extends StatefulWidget {
  const WithdrawPage({Key? key}) : super(key: key);
  static const String routeName='/withdraw';

  @override
  State<WithdrawPage> createState() => _WithdrawPageState();
}

class _WithdrawPageState extends State<WithdrawPage> {
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
              height: MediaQuery.of(context).size.height/7,
              child: Container(
                decoration: BoxDecoration(
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                          color: Color(0xffFFD504),
                          spreadRadius: -1.0,
                          blurRadius: 1.0,
                          offset: Offset(0, 4,)
                      )
                    ],
                    borderRadius: BorderRadius.circular(8)
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    InkWell(
                      onTap:(){
                        // showDialog(
                        //   context: context,
                        //   builder: (context) {
                        //     return DepositDialog();
                        //   },);
                      },
                      child: InkWell(
                        onTap: (){
                          Navigator.pushNamed(context, BankWithdrawDetails.routeName);
                        },
                        child: Padding(
                          padding: const EdgeInsets.all(18.0),
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              SvgPicture.asset('svg/bank.svg',height: 35,),
                              SizedBox(height: 5,),
                              Text('Bank Withdraw',style: TextStyle(fontSize: 14,color: Color(0xff043655)),)
                            ],
                          ),
                        ),
                      ),
                    ),
                    Container(
                      width: 1,
                      padding: EdgeInsets.only(top: 10,bottom: 10),
                      color: Colors.grey.shade200,
                      height: MediaQuery.of(context).size.height/7,
                    ),
                    InkWell(
                      onTap: (){
                       Navigator.pushNamed(context, EWalletWithdrawForm.routeName);
                      },
                      child: Padding(
                        padding: const EdgeInsets.all(18.0),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            SvgPicture.asset('svg/ewallet.svg',height: 35,),
                            SizedBox(height: 5,),
                            Text('E-Wallet Withdraw',style: TextStyle(fontSize: 14,color: Color(0xff043655)),),

                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),

          Container(
            alignment: Alignment.center,
            margin: EdgeInsets.all(8),
            padding: EdgeInsets.only(top: 10,bottom: 10),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(6)),
                border: Border.all(
                    color: Color(0xff043655),
                    width: 1
                )
            ),
            child: Text('Withdraw history',style: TextStyle(fontWeight: FontWeight.bold),),
          ),

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
                              ElevatedButton(

                                  style: ElevatedButton.styleFrom(
                                    backgroundColor: Color(0xffFFD504),
                                    minimumSize: Size.zero, // Set this
                                    padding: EdgeInsets.all(5),
                                  ),
                                  onPressed: (){}, child: Text('\$10,000.00'))
                            ],
                          ),
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
                                  SvgPicture.asset('svg/method.svg'),
                                  SizedBox(width: 5,),
                                  Text('Method:',style: TextStyle(fontSize: 14,color: Color(0xff043655)),)
                                ],
                              ),
                              Text('Perfectmoney(PM)')
                            ],
                          ),
                          SizedBox(height: 5,),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  SvgPicture.asset('svg/trx.svg'),
                                  SizedBox(width: 5,),
                                  Text('Trx:',style: TextStyle(fontSize: 14,color: Color(0xff043655)),)
                                ],
                              ),
                              Text('22222222')
                            ],
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 5,),
                    Padding(
                      padding: const EdgeInsets.only(left: 8.0,right: 8),
                      child: Container(
                        decoration: BoxDecoration(
                            color: Colors.blue,
                            borderRadius: BorderRadius.circular(6)
                        ),
                        child:  Padding(
                          padding: const EdgeInsets.only(left: 12.0,right: 12,top: 6,bottom: 6),
                          child: Text('Sucessful',style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white),),
                        ),
                      ),
                    )

                  ],
                ),
              ),
            ),
          ),
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
                              ElevatedButton(

                                  style: ElevatedButton.styleFrom(
                                    backgroundColor: Color(0xffFFD504),
                                    minimumSize: Size.zero, // Set this
                                    padding: EdgeInsets.all(5),
                                  ),
                                  onPressed: (){}, child: Text('\$10,000.00'))
                            ],
                          ),
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
                                  SvgPicture.asset('svg/method.svg'),
                                  SizedBox(width: 5,),
                                  Text('Method:',style: TextStyle(fontSize: 14,color: Color(0xff043655)),)
                                ],
                              ),
                              Text('Perfectmoney(PM)')
                            ],
                          ),
                          SizedBox(height: 5,),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  SvgPicture.asset('svg/trx.svg'),
                                  SizedBox(width: 5,),
                                  Text('Trx:',style: TextStyle(fontSize: 14,color: Color(0xff043655)),)
                                ],
                              ),
                              Text('22222222')
                            ],
                          ),
                        ],
                      ),
                    ),

                    Padding(
                      padding: const EdgeInsets.only(left: 8.0,top: 5),
                      child: Container(
                        decoration: const BoxDecoration(
                          color: Colors.black,
                          image: DecorationImage(
                            image:AssetImage("images/btn_bg.png"),
                            fit:BoxFit.cover,
                          ),
                          borderRadius: BorderRadius.all(Radius.circular(6)),

                        ),
                        child: Padding(
                          padding: const EdgeInsets.only(left: 20.0,right: 20,top: 6,bottom: 6),
                          child: Text('Pending',style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white),),
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



      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        onPressed: (){

        },
        child: Icon(Icons.add),
        tooltip: 'Add new Contact',
      ),
      bottomNavigationBar: BottomAppBar(
        elevation: 10,
        notchMargin: 5,
        shape: CircularNotchedRectangle(),
        clipBehavior: Clip.antiAlias,
        child: BottomNavigationBar(
          selectedItemColor: Colors.blue,
          backgroundColor: Colors.white,
          onTap: (value){
            if(value==0){
            //  Navigator.pushNamed(context, DealershipPage.routeName);
            }
          },
          items: [
            BottomNavigationBarItem(

                icon: Image.asset("images/Home.png",height: 30,),
                label: 'Home'
            ),
            BottomNavigationBarItem(

                label: 'Support',
                icon: Image.asset("images/Support.png",height: 30,)),

          ],
        ),

      ),
    );
  }
}
