import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../utils/drawer.dart';
import '../../utils/my_appbar.dart';
import '../dealership_page.dart';

class LotteryTicketHistory extends StatefulWidget {
  const LotteryTicketHistory({Key? key}) : super(key: key);
  static const String routeName='/history';

  @override
  State<LotteryTicketHistory> createState() => _LotteryTicketHistoryState();
}

class _LotteryTicketHistoryState extends State<LotteryTicketHistory> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: MyDrawer(),
      appBar: myAppbar(),
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

                      },
                      child: Padding(
                        padding: const EdgeInsets.all(18.0),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Image.asset('images/ticket_ball.png',height: 45,),
                            SizedBox(height: 5,),
                            Text('Ticket History',style: TextStyle(fontSize: 14,color: Color(0xff043655)),)
                          ],
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
                      //  Navigator.pushNamed(context, DepositForm.routeName);
                      },
                      child: Padding(
                        padding: const EdgeInsets.all(18.0),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            SizedBox(height: 5,),
                            Image.asset('images/gold_cup.png',height: 30,),
                            SizedBox(height: 10,),
                            Text('Win History',style: TextStyle(fontSize: 14,color: Color(0xff043655)),),

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
            child: Text('Lottery Ticket history',style: TextStyle(fontWeight: FontWeight.bold),),
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
                                  onPressed: (){}, child: Row(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  SvgPicture.asset('svg/cup.svg',height: 15,),
                                  SizedBox(width: 5,),
                                  Text('041')
                                ],
                              ))
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
                                  Text('Category:',style: TextStyle(fontSize: 14,color: Color(0xff043655)),)
                                ],
                              ),
                              Text('PCSO-9.00 PM')
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
                                  Text('Lottery:',style: TextStyle(fontSize: 14,color: Color(0xff043655)),)
                                ],
                              ),
                              Text('3D Game Total')
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
                                  SizedBox(width: 5,),
                                  Text('Won Amount:',style: TextStyle(fontSize: 14,color: Color(0xff043655)),)
                                ],
                              ),
                              Text('\$8.00')
                            ],
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 5,),
                    Align(
                      alignment: Alignment.topRight,
                      child: Padding(
                        padding: const EdgeInsets.only(left: 12.0,right: 12,top: 6,bottom: 6),
                        child: Text('Won',style: TextStyle(fontWeight: FontWeight.bold,color: Colors.blue),),
                      ),
                    ),

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
                                  onPressed: (){}, child: Row(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  SvgPicture.asset('svg/cup.svg',height: 15,),
                                  SizedBox(width: 5,),
                                  Text('041')
                                ],
                              ))
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
                                  Text('Category:',style: TextStyle(fontSize: 14,color: Color(0xff043655)),)
                                ],
                              ),
                              Text('PCSO-9.00 PM')
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
                                  Text('Lottery:',style: TextStyle(fontSize: 14,color: Color(0xff043655)),)
                                ],
                              ),
                              Text('3D Game Total')
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
                                  SizedBox(width: 5,),
                                  Text('Won Amount:',style: TextStyle(fontSize: 14,color: Color(0xff043655)),)
                                ],
                              ),
                              Text('\$8.00')
                            ],
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 5,),
                    Align(
                      alignment: Alignment.topRight,
                      child: Padding(
                        padding: const EdgeInsets.only(left: 12.0,right: 12,top: 6,bottom: 6),
                        child: Text('Won',style: TextStyle(fontWeight: FontWeight.bold,color: Colors.blue),),
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
        backgroundColor: Colors.white,
        onPressed: (){
        },
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Image.asset('images/ticket_ball.png'),
        ),
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
              Navigator.pushNamed(context, DealershipPage.routeName);
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
