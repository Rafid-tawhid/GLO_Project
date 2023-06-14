import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:glo_ticket/utils/my_appbar.dart';

class PCSOLotteryTickets extends StatelessWidget {
  static const String routeName='/pcso';
  const PCSOLotteryTickets({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: myAppbar(context),
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
