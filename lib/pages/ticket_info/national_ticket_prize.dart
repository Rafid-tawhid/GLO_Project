import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../upgrade_page/upgrade_page.dart';

class NationalTicketPrize extends StatefulWidget {
  const NationalTicketPrize({Key? key}) : super(key: key);
  static const String routeName = '/national_prize';

  @override
  State<NationalTicketPrize> createState() => _NationalTicketPrizeState();
}

class _NationalTicketPrizeState extends State<NationalTicketPrize> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 80,
        titleSpacing: 0,
        backgroundColor: Colors.transparent,
        automaticallyImplyLeading: false,
        title: Container(
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
                                      color: Color(0xffFFD504), fontSize: 12),
                                ),
                                height: 18,
                                width: 93,
                                decoration: BoxDecoration(
                                    color: Color(0xff061596),
                                    borderRadius: BorderRadius.circular(40)),
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
                                      color: Color(0xffFFD504), fontSize: 12),
                                ),
                                height: 18,
                                width: 93,
                                decoration: BoxDecoration(
                                    color: Color(0xff061596),
                                    borderRadius: BorderRadius.circular(40)),
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
                      style: TextStyle(color: Color(0xff061596), fontSize: 10),
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
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          height: 520,
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
              color: Color(0xffF0E5F7),
              borderRadius: BorderRadius.circular(12),
              border: Border.all(color: Color(0xff770ABC), width: 2)),
          child: Stack(
            children: [
              Positioned(left: 0, child: Image.asset('images/img_price.png')),
              Positioned(
                  right: 0,
                  child: InkWell(
                    onTap: (){
                      Navigator.pop(context);
                    },
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        decoration: BoxDecoration(
                          color: Color(0xff770ABC),
                          borderRadius: BorderRadius.circular(4)
                        ),
                          child: Padding(
                        padding: const EdgeInsets.all(2.0),
                        child: Icon(
                          Icons.close_rounded,
                          color: Colors.white,
                          size: 18,
                        ),
                      )),
                    ),
                  )),
              Column(
                children: [
                  SizedBox(
                    height: 25,
                  ),
                  Text(
                    'NATIONAL',
                    style: TextStyle(
                        fontSize: 28,
                        color: Color(0xff770ABC),
                        fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    'THE NATIONAL LOTTERY PRIZE!',
                    style: TextStyle(fontSize: 20, color: Color(0xff770ABC)),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  FittedBox(
                      child: Text(
                    'Every month date 1 & 16 (Bangkok time 4:00pm).',
                    style: TextStyle(fontSize: 16, color: Color(0xff770ABC)),
                  )),
                  SizedBox(
                    height: 25,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Column(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 8.0),
                            child: Text(
                              'Play Type',
                              style: TextStyle(
                                  color: Color(0xff770ABC),
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              SvgPicture.asset('svg/right_arrow.svg'),
                              Text(
                                '1st Prize Ticket',
                                style: TextStyle(fontSize: 10),
                              )
                            ],
                          ),
                          SizedBox(
                            height: 4,
                          ),
                          Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              SvgPicture.asset('svg/right_arrow.svg'),
                              Text(
                                '1st Prize Ticket',
                                style: TextStyle(fontSize: 10),
                              )
                            ],
                          ),
                          SizedBox(
                            height: 4,
                          ),
                          Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              SvgPicture.asset('svg/right_arrow.svg'),
                              Text(
                                '1st Prize Ticket',
                                style: TextStyle(fontSize: 10),
                              )
                            ],
                          ),
                          SizedBox(
                            height: 4,
                          ),
                          Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              SvgPicture.asset('svg/right_arrow.svg'),
                              Text(
                                '1st Prize Ticket',
                                style: TextStyle(fontSize: 10),
                              )
                            ],
                          ),
                          SizedBox(
                            height: 4,
                          ),
                          Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              SvgPicture.asset('svg/right_arrow.svg'),
                              Text(
                                '1st Prize Ticket',
                                style: TextStyle(fontSize: 10),
                              )
                            ],
                          ),
                          SizedBox(
                            height: 4,
                          ),
                          Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              SvgPicture.asset('svg/right_arrow.svg'),
                              Text(
                                '2 Down Single Digit',
                                style: TextStyle(fontSize: 10),
                              )
                            ],
                          ),
                          SizedBox(
                            height: 4,
                          ),
                          Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              SvgPicture.asset('svg/right_arrow.svg'),
                              Text(
                                '1st Prize Ticket',
                                style: TextStyle(fontSize: 10),
                              )
                            ],
                          ),
                          SizedBox(
                            height: 4,
                          ),
                          Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              SvgPicture.asset('svg/right_arrow.svg'),
                              Text(
                                '1st Prize Ticket',
                                style: TextStyle(fontSize: 10),
                              )
                            ],
                          ),
                          SizedBox(
                            height: 4,
                          ),
                          Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              SvgPicture.asset('svg/right_arrow.svg'),
                              Text(
                                '1st Prize Ticket',
                                style: TextStyle(fontSize: 10),
                              )
                            ],
                          )
                        ],
                      ),
                      Column(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            'Amount',
                            style: TextStyle(
                                color: Color(0xff770ABC),
                                fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                            '\$1',
                            style: TextStyle(fontSize: 10),
                          ),
                          SizedBox(
                            height: 4,
                          ),
                          Text(
                            '\$1',
                            style: TextStyle(fontSize: 10),
                          ),
                          SizedBox(
                            height: 4,
                          ),
                          Text(
                            '\$1',
                            style: TextStyle(fontSize: 10),
                          ),
                          SizedBox(
                            height: 4,
                          ),
                          Text(
                            '\$1',
                            style: TextStyle(fontSize: 10),
                          ),
                          SizedBox(
                            height: 4,
                          ),
                          Text(
                            '\$1',
                            style: TextStyle(fontSize: 10),
                          ),
                          SizedBox(
                            height: 4,
                          ),
                          Text(
                            '\$1',
                            style: TextStyle(fontSize: 10),
                          ),
                          SizedBox(
                            height: 4,
                          ),
                          Text(
                            '\$1',
                            style: TextStyle(fontSize: 10),
                          ),
                          SizedBox(
                            height: 4,
                          ),
                          Text(
                            '\$1',
                            style: TextStyle(fontSize: 10),
                          ),
                          SizedBox(
                            height: 4,
                          ),
                          Text(
                            '\$1',
                            style: TextStyle(fontSize: 10),
                          ),
                          SizedBox(
                            height: 4,
                          ),
                        ],
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Column(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            'Stright',
                            style: TextStyle(
                                color: Color(0xff770ABC),
                                fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                            '\$5000',
                            style: TextStyle(fontSize: 10),
                          ),
                          SizedBox(
                            height: 4,
                          ),
                          Text(
                            '\$1',
                            style: TextStyle(fontSize: 10),
                          ),
                          SizedBox(
                            height: 4,
                          ),
                          Text(
                            '\$1',
                            style: TextStyle(fontSize: 10),
                          ),
                          SizedBox(
                            height: 4,
                          ),
                          Text(
                            '\$1',
                            style: TextStyle(fontSize: 10),
                          ),
                          SizedBox(
                            height: 4,
                          ),
                          Text(
                            '\$1',
                            style: TextStyle(fontSize: 10),
                          ),
                          SizedBox(
                            height: 4,
                          ),
                          Text(
                            '\$1',
                            style: TextStyle(fontSize: 10),
                          ),
                          SizedBox(
                            height: 4,
                          ),
                          Text(
                            '\$1',
                            style: TextStyle(fontSize: 10),
                          ),
                          SizedBox(
                            height: 4,
                          ),
                          Text(
                            '\$1',
                            style: TextStyle(fontSize: 10),
                          ),
                          SizedBox(
                            height: 4,
                          ),
                          Text(
                            '\$1',
                            style: TextStyle(fontSize: 10),
                          ),
                          SizedBox(
                            height: 4,
                          ),
                        ],
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Column(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            'Rumble',
                            style: TextStyle(
                                color: Color(0xff770ABC),
                                fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                            '\$5000',
                            style: TextStyle(fontSize: 10),
                          ),
                          SizedBox(
                            height: 4,
                          ),
                          Text(
                            '\$1',
                            style: TextStyle(fontSize: 10),
                          ),
                          SizedBox(
                            height: 4,
                          ),
                          Text(
                            '\$1',
                            style: TextStyle(fontSize: 10),
                          ),
                          SizedBox(
                            height: 4,
                          ),
                          Text(
                            '\$1',
                            style: TextStyle(fontSize: 10),
                          ),
                          SizedBox(
                            height: 4,
                          ),
                          Text(
                            '\$1',
                            style: TextStyle(fontSize: 10),
                          ),
                          SizedBox(
                            height: 4,
                          ),
                          Text(
                            '\$1',
                            style: TextStyle(fontSize: 10),
                          ),
                          SizedBox(
                            height: 4,
                          ),
                          Text(
                            '\$1',
                            style: TextStyle(fontSize: 10),
                          ),
                          SizedBox(
                            height: 4,
                          ),
                          Text(
                            '\$1',
                            style: TextStyle(fontSize: 10),
                          ),
                          SizedBox(
                            height: 4,
                          ),
                          Text(
                            '\$1',
                            style: TextStyle(fontSize: 10),
                          ),
                          SizedBox(
                            height: 4,
                          ),
                        ],
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Column(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            'Discount',
                            style: TextStyle(
                                color: Color(0xff770ABC),
                                fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                            '\$5000',
                            style: TextStyle(fontSize: 10),
                          ),
                          SizedBox(
                            height: 4,
                          ),
                          Text(
                            '\$1',
                            style: TextStyle(fontSize: 10),
                          ),
                          SizedBox(
                            height: 4,
                          ),
                          Text(
                            '\$1',
                            style: TextStyle(fontSize: 10),
                          ),
                          SizedBox(
                            height: 4,
                          ),
                          Text(
                            '\$1',
                            style: TextStyle(fontSize: 10),
                          ),
                          SizedBox(
                            height: 4,
                          ),
                          Text(
                            '\$1',
                            style: TextStyle(fontSize: 10),
                          ),
                          SizedBox(
                            height: 4,
                          ),
                          Text(
                            '\$1',
                            style: TextStyle(fontSize: 10),
                          ),
                          SizedBox(
                            height: 4,
                          ),
                          Text(
                            '\$1',
                            style: TextStyle(fontSize: 10),
                          ),
                          SizedBox(
                            height: 4,
                          ),
                          Text(
                            '\$1',
                            style: TextStyle(fontSize: 10),
                          ),
                          SizedBox(
                            height: 4,
                          ),
                          Text(
                            '\$1',
                            style: TextStyle(fontSize: 10),
                          ),
                          SizedBox(
                            height: 4,
                          ),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width / 1.2,
                    height: 1,
                    color: Color(0xff770ABC),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 5.0, bottom: 5),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          width: 30,
                        ),
                        Icon(
                          Icons.star,
                          color: Color(0xff770ABC),
                          size: 16,
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Flexible(
                            child: Text(
                          'Discount from 02-15 and 17 to last day of month, If you play after you can get regular price!',
                          overflow: TextOverflow.visible,
                          style: TextStyle(fontSize: 12),
                        )),
                        SizedBox(
                          width: 30,
                        ),
                      ],
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
