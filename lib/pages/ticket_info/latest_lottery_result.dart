import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class LatestLotteryResult extends StatefulWidget {
  const LatestLotteryResult({Key? key}) : super(key: key);
  static const String routeName='/latest_lottery';

  @override
  State<LatestLotteryResult> createState() => _LatestLotteryResultState();
}

class _LatestLotteryResultState extends State<LatestLotteryResult> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 80,
        titleSpacing: 0,
        backgroundColor: Colors.transparent,
        automaticallyImplyLeading:false,
        title:  Container(
          height: 80,
          decoration: BoxDecoration(
              color: Color(0xffFFD504),
              borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(12),
                  bottomRight: Radius.circular(12))),
          child: Row(
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Icon(
                      Icons.arrow_back,
                      color: Color(0xff061596),
                      size: 30,
                    ),
                  ),
                ],
              ),
              Expanded(
                child: Container(
                  height: 80,
                  child: Stack(
                    children: [
                      Positioned(
                        left: 0,
                        right: 0,
                        top: 0,
                        child: SvgPicture.asset(
                          'svg/national.svg',
                          fit: BoxFit.contain,
                          width: 75,
                          height: 55,
                        ),
                      ),
                      Positioned(
                        left: 0,
                        right: 0,
                        bottom: 0,
                        child: Padding(
                          padding: const EdgeInsets.all(4.0),
                          child: Text(
                            'Latest Lottery Result',
                            style: TextStyle(
                                color: Color(0xff061596),
                                fontSize: 20,
                                fontWeight: FontWeight.bold),
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ),
                      Positioned(
                        right: 0,
                        child: Padding(
                          padding: const EdgeInsets.only(top: 16.0),
                          child: Stack(
                            clipBehavior: Clip.none,
                            children: [
                              Container(
                                alignment: Alignment.center,
                                child: Text(
                                  '\$ 9097.75',
                                  style: TextStyle(
                                      color: Color(0xffFFD504),
                                      fontSize: 12),
                                ),
                                height: 18,
                                width: 93,
                                decoration: BoxDecoration(
                                    color: Color(0xff061596),
                                    borderRadius:
                                    BorderRadius.circular(40)),
                              ),
                              Positioned(
                                  left: -10,
                                  top: -3,
                                  child: Image.asset(
                                    'images/dollar_coin.png',
                                    height: 22,
                                  )),
                            ],
                          ),
                        ),
                      ),
                      Positioned(
                        left: 0,
                        child: Padding(
                          padding: const EdgeInsets.only(top: 16.0),
                          child: Stack(
                            clipBehavior: Clip.none,
                            children: [
                              Container(
                                alignment: Alignment.center,
                                child: Text(
                                  '\$ 9097.75',
                                  style: TextStyle(
                                      color: Color(0xffFFD504),
                                      fontSize: 12),
                                ),
                                height: 18,
                                width: 93,
                                decoration: BoxDecoration(
                                    color: Color(0xff061596),
                                    borderRadius:
                                    BorderRadius.circular(40)),
                              ),
                              Positioned(
                                  right: -10,
                                  top: -3,
                                  child: Image.asset(
                                    'images/dollar_coin.png',
                                    height: 22,
                                  )),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 8.0, bottom: 8),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Image.asset(
                      'images/profile_ticket.png',
                      fit: BoxFit.cover,
                      width: 30,
                      height: 30,
                    ),
                    SizedBox(
                      height: 3,
                    ),
                    Text(
                      '1682832598',
                      style:
                      TextStyle(color: Color(0xff061596), fontSize: 10),
                    ),
                    SizedBox(
                      height: 5,
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(3.0),
              child: Container(
                height: MediaQuery.of(context).size.height/5.4,
                
                child: Stack(
                  children: [
                    Card(
                      elevation: 5,
                      child: Container(
                        color: Colors.transparent,
                        child: Image.asset('images/national_ticket.png',fit: BoxFit.fitHeight,),
                      ),
                    ),
                    Positioned(
                        left: 18,
                        top: 18,
                        child: Text('PCSO 2:00 PM',style: TextStyle(fontSize: 15,color: Colors.white,fontWeight: FontWeight.bold),)),
                    Positioned(
                      right: 50,
                      child: Container(
                        padding: EdgeInsets.only(top: 10,bottom: 5),
                        height: MediaQuery.of(context).size.height/5.4,
                        width: MediaQuery.of(context).size.width/2.75,
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Row(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Expanded(
                                    child: FittedBox(
                                      child: Text('16/09/2021',
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                            color: Colors.red,
                                            fontWeight: FontWeight.bold,
                                            fontSize: 13),),
                                    )),
                                SizedBox(width: 2,),
                                Expanded(
                                    child:
                                    FittedBox(
                                      child: Text('04:00 PM',
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                          color: Colors.red,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 11,),),
                                    ))
                              ],
                            ),
                            Padding(
                              padding: const EdgeInsets.all(4.0),
                              child: Container(
                                height: 35,
                                decoration: BoxDecoration(
                                    color: Colors.yellowAccent,
                                    borderRadius: BorderRadius.circular(4)
                                ),

                                child: Padding(
                                  padding: const EdgeInsets.all(4.0),
                                  child: Row(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text('1st',
                                          style: TextStyle(
                                            color: Colors.blueAccent,
                                            fontWeight: FontWeight.bold,
                                            fontSize: 11,)
                                      ),
                                      SizedBox(width: 4,),
                                      Text('943 703',
                                          textAlign: TextAlign.start,
                                          style: TextStyle(
                                            color: Colors.blueAccent,
                                            fontWeight: FontWeight.bold,
                                            fontSize: 20,)
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                            Row(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Expanded(
                                  child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      Text('3Up',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 12),),
                                      Container(
                                        width: double.infinity,
                                        decoration: BoxDecoration(
                                            color: Colors.white,
                                            borderRadius: BorderRadius.circular(4),
                                            border: Border.all(
                                                color: Colors.blue,
                                                width: 1.5
                                            )
                                        ),
                                        child: Padding(
                                          padding: const EdgeInsets.all(2.0),
                                          child: Text('567', style: TextStyle(
                                            color: Colors.blueAccent,
                                            fontWeight: FontWeight.bold,
                                            fontSize: 12,),
                                            textAlign: TextAlign.center,
                                          ),
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                                SizedBox(width: 5,),
                                Expanded(
                                  child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      Text('2Up',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 12),),
                                      Container(
                                        width: double.infinity,
                                        decoration: BoxDecoration(
                                            color: Colors.white,
                                            borderRadius: BorderRadius.circular(4),
                                            border: Border.all(
                                                color: Colors.blue,
                                                width: 1.5
                                            )
                                        ),
                                        child: Padding(
                                          padding: const EdgeInsets.all(2.0),
                                          child: Text('98', style: TextStyle(
                                            color: Colors.blueAccent,
                                            fontWeight: FontWeight.bold,
                                            fontSize: 12,),
                                            textAlign: TextAlign.center,
                                          ),
                                        ),
                                      )
                                    ],
                                  ),
                                ),

                              ],
                            ),
                            SizedBox(height: 5,),
                            Expanded(
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  Text('Down',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 12),),
                                  Container(
                                    width: (MediaQuery.of(context).size.width/2.7)/2,
                                    decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius: BorderRadius.circular(4),
                                        border: Border.all(
                                            color: Colors.blue,
                                            width: 1.5
                                        )
                                    ),
                                    child: Padding(
                                      padding: const EdgeInsets.all(2.0),
                                      child: Text('34', style: TextStyle(
                                        color: Colors.blueAccent,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 12,),
                                        textAlign: TextAlign.center,
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(3.0),
              child: Container(
                height: MediaQuery.of(context).size.height/5.4,

                child: Stack(
                  children: [
                    Card(
                      elevation: 5,
                      child: Container(
                        color: Colors.transparent,
                        child: Image.asset('images/pcso_ticket.png',fit: BoxFit.fitHeight,),
                      ),
                    ),
                    Positioned(
                        left: 18,
                        top: 18,
                        child: Text('PCSO 2:00 PM',style: TextStyle(fontSize: 15,color: Colors.white,fontWeight: FontWeight.bold),)),
                    Positioned(
                      right: 50,
                      child: Container(
                        padding: EdgeInsets.only(top: 10,bottom: 5),
                        height: MediaQuery.of(context).size.height/5.4,
                        width: MediaQuery.of(context).size.width/2.75,
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Row(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Expanded(
                                    child: FittedBox(
                                      child: Text('16/09/2021',
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                            color: Colors.red,
                                            fontWeight: FontWeight.bold,
                                            fontSize: 13),),
                                    )),
                                SizedBox(width: 2,),
                                Expanded(
                                    child:
                                    FittedBox(
                                      child: Text('04:00 PM',
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                          color: Colors.red,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 11,),),
                                    ))
                              ],
                            ),
                            Padding(
                              padding: const EdgeInsets.all(4.0),
                              child: Container(
                                height: 35,
                                decoration: BoxDecoration(
                                    color: Colors.yellowAccent,
                                    borderRadius: BorderRadius.circular(4)
                                ),

                                child: Padding(
                                  padding: const EdgeInsets.all(4.0),
                                  child: Row(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text('1st',
                                          style: TextStyle(
                                            color: Colors.blueAccent,
                                            fontWeight: FontWeight.bold,
                                            fontSize: 11,)
                                      ),
                                      SizedBox(width: 4,),
                                      Text('943 703',
                                          textAlign: TextAlign.start,
                                          style: TextStyle(
                                            color: Colors.blueAccent,
                                            fontWeight: FontWeight.bold,
                                            fontSize: 20,)
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                            Row(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Expanded(
                                  child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      Text('3Up',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 12),),
                                      Container(
                                        width: double.infinity,
                                        decoration: BoxDecoration(
                                            color: Colors.white,
                                            borderRadius: BorderRadius.circular(4),
                                            border: Border.all(
                                                color: Colors.blue,
                                                width: 1.5
                                            )
                                        ),
                                        child: Padding(
                                          padding: const EdgeInsets.all(2.0),
                                          child: Text('567', style: TextStyle(
                                            color: Colors.blueAccent,
                                            fontWeight: FontWeight.bold,
                                            fontSize: 12,),
                                            textAlign: TextAlign.center,
                                          ),
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                                SizedBox(width: 5,),
                                Expanded(
                                  child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      Text('2Up',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 12),),
                                      Container(
                                        width: double.infinity,
                                        decoration: BoxDecoration(
                                            color: Colors.white,
                                            borderRadius: BorderRadius.circular(4),
                                            border: Border.all(
                                                color: Colors.blue,
                                                width: 1.5
                                            )
                                        ),
                                        child: Padding(
                                          padding: const EdgeInsets.all(2.0),
                                          child: Text('98', style: TextStyle(
                                            color: Colors.blueAccent,
                                            fontWeight: FontWeight.bold,
                                            fontSize: 12,),
                                            textAlign: TextAlign.center,
                                          ),
                                        ),
                                      )
                                    ],
                                  ),
                                ),

                              ],
                            ),
                            SizedBox(height: 5,),
                            Expanded(
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  Text('Down',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 12),),
                                  Container(
                                    width: (MediaQuery.of(context).size.width/2.7)/2,
                                    decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius: BorderRadius.circular(4),
                                        border: Border.all(
                                            color: Colors.blue,
                                            width: 1.5
                                        )
                                    ),
                                    child: Padding(
                                      padding: const EdgeInsets.all(2.0),
                                      child: Text('34', style: TextStyle(
                                        color: Colors.blueAccent,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 12,),
                                        textAlign: TextAlign.center,
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(3.0),
              child: Container(
                height: MediaQuery.of(context).size.height/5.4,

                child: Stack(
                  children: [
                    Card(
                      elevation: 5,
                      child: Container(
                        color: Colors.transparent,
                        child: Image.asset('images/bingo_ticket.png',fit: BoxFit.fitHeight,),
                      ),
                    ),
                    Positioned(
                        left: 18,
                        top: 18,
                        child: Text('BINGO',style: TextStyle(fontSize: 15,color: Colors.white,fontWeight: FontWeight.bold),)),
                    Positioned(
                      right: 50,
                      child: Container(
                        padding: EdgeInsets.only(top: 10,bottom: 5),
                        height: MediaQuery.of(context).size.height/5.4,
                        width: MediaQuery.of(context).size.width/2.75,
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Row(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Expanded(
                                    child: FittedBox(
                                      child: Text('16/09/2021',
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                            color: Colors.red,
                                            fontWeight: FontWeight.bold,
                                            fontSize: 13),),
                                    )),
                                SizedBox(width: 2,),
                                Expanded(
                                    child:
                                    FittedBox(
                                      child: Text('04:00 PM',
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                          color: Colors.red,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 11,),),
                                    ))
                              ],
                            ),
                            Padding(
                              padding: const EdgeInsets.all(4.0),
                              child: Container(
                                height: 35,
                                decoration: BoxDecoration(
                                    color: Colors.yellowAccent,
                                    borderRadius: BorderRadius.circular(4)
                                ),

                                child: Padding(
                                  padding: const EdgeInsets.all(4.0),
                                  child: Row(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text('1st',
                                          style: TextStyle(
                                            color: Colors.blueAccent,
                                            fontWeight: FontWeight.bold,
                                            fontSize: 11,)
                                      ),
                                      SizedBox(width: 4,),
                                      Text('943 703',
                                          textAlign: TextAlign.start,
                                          style: TextStyle(
                                            color: Colors.blueAccent,
                                            fontWeight: FontWeight.bold,
                                            fontSize: 20,)
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                            Row(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Expanded(
                                  child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      Text('3Up',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 12),),
                                      Container(
                                        width: double.infinity,
                                        decoration: BoxDecoration(
                                            color: Colors.white,
                                            borderRadius: BorderRadius.circular(4),
                                            border: Border.all(
                                                color: Colors.blue,
                                                width: 1.5
                                            )
                                        ),
                                        child: Padding(
                                          padding: const EdgeInsets.all(2.0),
                                          child: Text('567', style: TextStyle(
                                            color: Colors.blueAccent,
                                            fontWeight: FontWeight.bold,
                                            fontSize: 12,),
                                            textAlign: TextAlign.center,
                                          ),
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                                SizedBox(width: 5,),
                                Expanded(
                                  child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      Text('2Up',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 12),),
                                      Container(
                                        width: double.infinity,
                                        decoration: BoxDecoration(
                                            color: Colors.white,
                                            borderRadius: BorderRadius.circular(4),
                                            border: Border.all(
                                                color: Colors.blue,
                                                width: 1.5
                                            )
                                        ),
                                        child: Padding(
                                          padding: const EdgeInsets.all(2.0),
                                          child: Text('98', style: TextStyle(
                                            color: Colors.blueAccent,
                                            fontWeight: FontWeight.bold,
                                            fontSize: 12,),
                                            textAlign: TextAlign.center,
                                          ),
                                        ),
                                      )
                                    ],
                                  ),
                                ),

                              ],
                            ),
                            SizedBox(height: 5,),
                            Expanded(
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  Text('Down',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 12),),
                                  Container(
                                    width: (MediaQuery.of(context).size.width/2.7)/2,
                                    decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius: BorderRadius.circular(4),
                                        border: Border.all(
                                            color: Colors.blue,
                                            width: 1.5
                                        )
                                    ),
                                    child: Padding(
                                      padding: const EdgeInsets.all(2.0),
                                      child: Text('34', style: TextStyle(
                                        color: Colors.blueAccent,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 12,),
                                        textAlign: TextAlign.center,
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(3.0),
              child: Container(
                height: MediaQuery.of(context).size.height/5.4,

                child: Stack(
                  children: [
                    Card(
                      elevation: 5,
                      child: Container(
                        color: Colors.transparent,
                        child: Image.asset('images/toto_ticket.png',fit: BoxFit.fitHeight,),
                      ),
                    ),
                    Positioned(
                        left: 18,
                        top: 18,
                        child: Text('TOTO',style: TextStyle(fontSize: 15,color: Colors.white,fontWeight: FontWeight.bold),)),
                    Positioned(
                      right: 50,
                      child: Container(
                        padding: EdgeInsets.only(top: 10,bottom: 5),
                        height: MediaQuery.of(context).size.height/5.4,
                        width: MediaQuery.of(context).size.width/2.75,
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Row(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Expanded(
                                    child: FittedBox(
                                      child: Text('16/09/2021',
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                            color: Colors.red,
                                            fontWeight: FontWeight.bold,
                                            fontSize: 13),),
                                    )),
                                SizedBox(width: 2,),
                                Expanded(
                                    child:
                                    FittedBox(
                                      child: Text('04:00 PM',
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                          color: Colors.red,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 11,),),
                                    ))
                              ],
                            ),
                            Padding(
                              padding: const EdgeInsets.all(4.0),
                              child: Container(
                                height: 35,
                                decoration: BoxDecoration(
                                    color: Colors.yellowAccent,
                                    borderRadius: BorderRadius.circular(4)
                                ),

                                child: Padding(
                                  padding: const EdgeInsets.all(4.0),
                                  child: Row(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text('1st',
                                          style: TextStyle(
                                            color: Colors.red,
                                            fontWeight: FontWeight.bold,
                                            fontSize: 11,)
                                      ),
                                      SizedBox(width: 4,),
                                      Text('943 703',
                                          textAlign: TextAlign.start,
                                          style: TextStyle(
                                            color: Colors.red,
                                            fontWeight: FontWeight.bold,
                                            fontSize: 20,)
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                            Row(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Expanded(
                                  child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      Text('3Up',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 12),),
                                      Container(
                                        width: double.infinity,
                                        decoration: BoxDecoration(
                                            color: Colors.white,
                                            borderRadius: BorderRadius.circular(4),
                                            border: Border.all(
                                                color: Colors.red,
                                                width: 1.5
                                            )
                                        ),
                                        child: Padding(
                                          padding: const EdgeInsets.all(2.0),
                                          child: Text('567', style: TextStyle(
                                            color: Colors.red,
                                            fontWeight: FontWeight.bold,
                                            fontSize: 12,),
                                            textAlign: TextAlign.center,
                                          ),
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                                SizedBox(width: 5,),
                                Expanded(
                                  child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      Text('2Up',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 12),),
                                      Container(
                                        width: double.infinity,
                                        decoration: BoxDecoration(
                                            color: Colors.white,
                                            borderRadius: BorderRadius.circular(4),
                                            border: Border.all(
                                                color: Colors.red,
                                                width: 1.5
                                            )
                                        ),
                                        child: Padding(
                                          padding: const EdgeInsets.all(2.0),
                                          child: Text('98', style: TextStyle(
                                            color: Colors.red,
                                            fontWeight: FontWeight.bold,
                                            fontSize: 12,),
                                            textAlign: TextAlign.center,
                                          ),
                                        ),
                                      )
                                    ],
                                  ),
                                ),

                              ],
                            ),
                            SizedBox(height: 5,),
                            Expanded(
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  Text('Down',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 12),),
                                  Container(
                                   
                                    width: (MediaQuery.of(context).size.width/2.7)/2,
                                    decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius: BorderRadius.circular(4),
                                        border: Border.all(
                                            color: Colors.red,
                                            width: 1.5
                                        )
                                    ),
                                    child: Padding(
                                      padding: const EdgeInsets.all(2.0),
                                      child: Text('34', style: TextStyle(
                                        color: Colors.red,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 12,),
                                        textAlign: TextAlign.center,
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),

          ],
        ),
      ),
    );
  }
}
