import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:glo_ticket/utils/my_appbar.dart';

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
      appBar: myAppbar(context),
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
