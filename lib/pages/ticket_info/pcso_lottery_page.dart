import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class PCSOLotteryTickets extends StatelessWidget {
  static const String routeName='/pcso';
  const PCSOLotteryTickets({Key? key}) : super(key: key);

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
                          'svg/pcso.svg',
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
                            'PCSO',
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
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Image.asset('images/ticket.png',fit: BoxFit.fitWidth,height: 170,),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Image.asset('images/ticket.png',fit: BoxFit.fitWidth,height: 170,),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Image.asset('images/ticket.png',fit: BoxFit.fitWidth,height: 170,),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Image.asset('images/ticket.png',fit: BoxFit.fitWidth,height: 170,),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Image.asset('images/ticket.png',fit: BoxFit.fitWidth,height: 170,),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Image.asset('images/ticket.png',fit: BoxFit.fitWidth,height: 170,),
          ),



        ],
      ),
    );
  }
}
