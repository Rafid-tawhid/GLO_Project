import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:glo_project/utils/constants.dart';

class NationalTicketPageResult extends StatefulWidget {
  const NationalTicketPageResult({Key? key}) : super(key: key);
  static const String routeName = '/national_result';

  @override
  State<NationalTicketPageResult> createState() => _NationalTicketPageResultState();
}

class _NationalTicketPageResultState extends State<NationalTicketPageResult> {
  String? _type;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Container(
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
                                'NATIONAL',
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
            Padding(
              padding: const EdgeInsets.all(5.0),
              child: Column(
                children: [
                  Card(
                    elevation: 1,
                    color: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(top: 8.0, bottom: 8),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(
                                Icons.notifications_active,
                                color: Color(0xff061596),
                                size: 25,
                              ),
                              SizedBox(
                                width: 4,
                              ),
                              Text(
                                'Last Time for Buying Ticket',
                                style: TextStyle(
                                    color: Color(0xff061596), fontSize: 22),
                              )
                            ],
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                            '0D: 08H: 15M: 03S',
                            style:
                                TextStyle(color: Colors.red, fontSize: 22),
                          )
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: 70,),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Card(
                      elevation: 1,
                      color: Colors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Container(
                        width: MediaQuery.of(context).size.width,
                        alignment: Alignment.center,
                        height: MediaQuery.of(context).size.height/4,
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Image.asset('images/result.png'),
                            SizedBox(height: 5,),
                            Text('Please Wait for Result!',style: TextStyle(color: Colors.red,fontSize: 18),),
                            Text(' After playing this lottery, you can buy tickets again! ',style: TextStyle(color: Colors.white,fontSize: 14,backgroundColor: Colors.red),),
                          ],
                        ),
                      )
                    ),
                  ),
                ],
              ),
            ),

          ],
        ),
      ),
    );
  }
}
