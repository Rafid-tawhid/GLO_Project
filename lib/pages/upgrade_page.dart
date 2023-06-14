import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:glo_ticket/utils/my_appbar.dart';

import '../utils/constants.dart';

class UpgradePage extends StatefulWidget {
  static const String routeName='/upgrade_page';

  @override
  State<UpgradePage> createState() => _UpgradePageState();
}

class _UpgradePageState extends State<UpgradePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: myAppbar(context),
      body: Column(
        children: [
          SizedBox(height: 30,),
          Card(
            elevation: 10,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10)
            ),
            child: Container(
              height: MediaQuery.of(context).size.height/2,
              color: Color(0xffE5F3FC),
              child: Column(
                children: [
                  SvgPicture.asset('svg/all_logo.svg'),
                  SizedBox(height: 10,),
                  const Text('Official Personal Account',style: TextStyle(fontSize: 24,color: Colors.lightBlue),),
                  SizedBox(height: 5,),
                  Text('Yearly'),
                  SizedBox(height: 8,),
                  Container(
                    height: 1.5,
                    color: Colors.lightBlue,
                    width: MediaQuery.of(context).size.width/2,
                  )
                ],
              )
            ),
          )
        ],
      ),
    );
  }
}
