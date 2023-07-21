import 'package:flutter/material.dart';

import '../../utils/constants.dart';
import '../../utils/drawer.dart';
import '../../utils/my_appbar.dart';

class PackDetailsBank extends StatefulWidget {
  const PackDetailsBank({super.key});
  static const String routeName='/bank_details';

  @override
  State<PackDetailsBank> createState() => _PackDetailsBankState();
}

class _PackDetailsBankState extends State<PackDetailsBank> {
  String activeWidgets = 'wallet package';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: myAppbar(context),
      drawer: MyDrawer(),
      body: SafeArea(
        child: Scaffold(
          body: Padding(
            padding: const EdgeInsets.all(12.0),
            child: Card(
              child: ListView(
                shrinkWrap: true,
                children: [
                  const SizedBox(
                    height: 20,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10.0),
                    child: Row(
                      children: [
                        Expanded(
                          child: InkWell(
                            onTap: (){
                              Navigator.pop(context);
                            },
                            child: Card(
                              child: Padding(
                                padding: const EdgeInsets.all(4.0),
                                child: Column(
                                  children: [
                                    Image.asset(
                                      'images/e_walletx.png',
                                      height: 36,
                                    ),
                                    SizedBox(
                                      height: 5,
                                    ),
                                    Text(
                                      'Pack Details',
                                      style: TextStyle(color: Colors.blue),
                                    ),
                                    SizedBox(
                                      height: 4,
                                    ),
                                    Text(
                                      '(E-wallet)',
                                      style: TextStyle(
                                          color: Colors.blue, fontSize: 12),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 16,
                        ),
                        Expanded(
                          child: Card(
                            child: Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: Color(0xffE1F4FE),
                                border: Border.all(color: Colors.blue, width: 1),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(4.0),
                                child: Column(
                                  children: [
                                    Image.asset(
                                      'images/bank_x.png',
                                      height: 36,
                                    ),
                                    const SizedBox(
                                      height: 5,
                                    ),
                                    Text(
                                      'Pack Details',
                                      style: TextStyle(color: Colors.blue),
                                    ),
                                    SizedBox(
                                      height: 4,
                                    ),
                                    Text(
                                      '(bank)',
                                      style: TextStyle(
                                          color: Colors.blue, fontSize: 12),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Container(
                    height: 30,
                    margin: EdgeInsets.all(10),
                    width: MediaQuery.sizeOf(context).width,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(6),
                        color: Color(0xffF1F1F2)),
                    child: Padding(
                        padding: EdgeInsets.symmetric(horizontal: 7.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'See USD rate',
                              style: TextStyle(color: dark),
                            ),
                          ],
                        )),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Expanded(
                          child: Container(
                            decoration: activeWidgets == 'wallet package'
                                ? BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: Color(0xffE1F4FE),
                                border: Border.all(
                                    color: Colors.blue, width: 1))
                                : null,
                            child: Padding(
                              padding: const EdgeInsets.all(4.0),
                              child: InkWell(
                                onTap: () {
                                  setState(() {
                                    activeWidgets = 'wallet package';
                                  });
                                },
                                child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    Image.asset(
                                      'images/package.png',
                                      height: 32,
                                    ),
                                    SizedBox(
                                      height: 4,
                                    ),
                                    Text(
                                      'Package',
                                      style: TextStyle(color: dark),
                                    )
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                        Expanded(
                          child: Container(
                            decoration: activeWidgets == 'wallet order'
                                ? BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: Color(0xffE1F4FE),
                                border: Border.all(
                                    color: Colors.blue, width: 1))
                                : null,
                            child: Padding(
                              padding: const EdgeInsets.all(4.0),
                              child: InkWell(
                                onTap: () {
                                  setState(() {
                                    activeWidgets = 'wallet order';
                                  });
                                },
                                child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    Image.asset(
                                      'images/order.png',
                                      height: 32,
                                    ),
                                    SizedBox(
                                      height: 4,
                                    ),
                                    Text(
                                      'Order',
                                      style: TextStyle(color: dark),
                                    )
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                        Expanded(
                          child: Container(
                            decoration: activeWidgets == 'wallet processing'
                                ? BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: Color(0xffE1F4FE),
                                border: Border.all(
                                    color: Colors.blue, width: 1))
                                : null,
                            child: Padding(
                              padding: const EdgeInsets.all(4.0),
                              child: InkWell(
                                onTap: () {
                                  setState(() {
                                    activeWidgets = 'wallet processing';
                                  });
                                },
                                child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    Image.asset(
                                      'images/processing.png',
                                      height: 32,
                                    ),
                                    SizedBox(
                                      height: 4,
                                    ),
                                    Text(
                                      'Processing',
                                      style: TextStyle(color: dark),
                                    )
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                        Expanded(
                          child: Container(
                            decoration: activeWidgets == 'wallet complete'
                                ? BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: Color(0xffE1F4FE),
                                border: Border.all(
                                    color: Colors.blue, width: 1))
                                : null,
                            child: Padding(
                              padding: const EdgeInsets.all(4.0),
                              child: InkWell(
                                onTap: () {
                                  setState(() {
                                    activeWidgets = 'wallet complete';
                                  });
                                },
                                child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    Image.asset(
                                      'images/completed.png',
                                      height: 32,
                                    ),
                                    SizedBox(
                                      height: 4,
                                    ),
                                    Text(
                                      'Completed',
                                      style: TextStyle(color: dark),
                                    )
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          decoration: activeWidgets == 'wallet cancel'
                              ? BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Color(0xffE1F4FE),
                              border:
                              Border.all(color: Colors.blue, width: 1))
                              : null,
                          child: Padding(
                            padding: const EdgeInsets.all(4.0),
                            child: InkWell(
                              onTap: () {
                                setState(() {
                                  activeWidgets = 'wallet cancel';
                                });
                              },
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  Image.asset(
                                    'images/cancel.png',
                                    height: 32,
                                  ),
                                  SizedBox(
                                    height: 4,
                                  ),
                                  Text(
                                    'Cancelled',
                                    style: TextStyle(color: dark),
                                  )
                                ],
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(4.0),
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Text(
                                '',
                                style: TextStyle(color: dark),
                              )
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(4.0),
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Text(
                                '',
                                style: TextStyle(color: dark),
                              )
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(4.0),
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Text(
                                '',
                                style: TextStyle(color: dark),
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  if (activeWidgets == 'wallet cancel') CanceledCardWidgets(),
                  if (activeWidgets == 'wallet complete')
                    CompletedCardWidgets(),
                  if (activeWidgets == 'wallet processing')
                    ProcessingCardWidgets(),
                  if (activeWidgets == 'wallet package') PackageWidgets(),
                  if (activeWidgets == 'wallet order') OrderCardWidgets()
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}


class CanceledCardWidgets extends StatelessWidget {
  const CanceledCardWidgets({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Container(
          height: 30,
          margin: EdgeInsets.all(10),
          width: MediaQuery.sizeOf(context).width,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(6), color: Color(0xffF1F1F2)),
          child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 7.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Cancelled Package History',
                    style: TextStyle(color: dark),
                  ),
                ],
              )),
        ),
        SizedBox(
          height: 10,
        ),
        Card(
          child: Container(
            width: MediaQuery.sizeOf(context).width / 1.2,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(6), color: lightBlue),
            child: Column(
              children: [
                Stack(
                  alignment: Alignment.center,
                  children: [
                    Image.asset(
                      'images/blue_top.png',
                      height: 40,
                      fit: BoxFit.cover,
                      width: 280,
                    ),
                    const Positioned(
                        bottom: 0,
                        child: Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Text(
                            'SILVER',
                            style: TextStyle(
                                color: Colors.blue,
                                fontWeight: FontWeight.bold,
                                fontSize: 16),
                          ),
                        ))
                  ],
                ),
                SizedBox(
                  height: 8,
                ),
                Text(
                  '\$50.00',
                  style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold),
                ),
                Text('8% Commission'),
                SizedBox(
                  height: 5,
                ),
                Container(
                  width: MediaQuery.sizeOf(context).width / 1.5,
                  height: .2,
                  color: Colors.grey,
                ),
                SizedBox(
                  height: 5,
                ),
                Image.asset(
                  'images/warning.png',
                  height: 30,
                ),
                SizedBox(
                  height: 5,
                ),
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 30.0),
                  child: Text(
                    '''Sorry! This package is no longer available at the moment. Another person has bought the package. Please try a new package''',
                    style: TextStyle(fontSize: 10, color: Colors.red),
                    textAlign: TextAlign.center,
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(4),
                        color: Colors.red),
                    child: const Padding(
                      padding:
                      EdgeInsets.symmetric(vertical: 6.0, horizontal: 8),
                      child: Text(
                        'Order Cancelled',
                        style: TextStyle(color: Colors.white, fontSize: 10),
                      ),
                    )),
                SizedBox(
                  height: 10,
                ),
                Container(
                  width: MediaQuery.sizeOf(context).width / 1.5,
                  height: .2,
                  color: Colors.grey,
                ),
                SizedBox(
                  height: 6,
                ),
                Text('Dutch Bangla Bank Limited',style: TextStyle(color: Colors.red,fontWeight: FontWeight.bold,fontSize: 16),),

                SizedBox(
                  height: 18,
                ),
                Image.asset('images/bottom_card.png'),
              ],
            ),
          ),
        ),
        SizedBox(
          height: 20,
        ),
        Card(
          child: Container(
            width: MediaQuery.sizeOf(context).width / 1.2,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(6), color: lightOrange),
            child: Column(
              children: [
                Stack(
                  alignment: Alignment.center,
                  children: [
                    Image.asset(
                      'images/gold_top.png',
                      height: 40,
                      fit: BoxFit.cover,
                      width: 280,
                    ),
                    Positioned(
                        bottom: 0,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            'GOLD',
                            style: TextStyle(
                                color: deeporange,
                                fontWeight: FontWeight.bold,
                                fontSize: 16),
                          ),
                        ))
                  ],
                ),
                SizedBox(
                  height: 8,
                ),
                Text(
                  '\$120.00',
                  style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold),
                ),
                Text('9% Commission'),
                SizedBox(
                  height: 5,
                ),
                Container(
                  width: MediaQuery.sizeOf(context).width / 1.5,
                  height: .2,
                  color: Colors.grey,
                ),
                SizedBox(
                  height: 5,
                ),
                Image.asset(
                  'images/warning.png',
                  height: 30,
                ),
                SizedBox(
                  height: 5,
                ),
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 30.0),
                  child: Text(
                    '''Sorry! This package is no longer available at the moment. Another person has bought the package. Please try a new package''',
                    style: TextStyle(fontSize: 10, color: Colors.red),
                    textAlign: TextAlign.center,
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(4),
                        color: Colors.red),
                    child: const Padding(
                      padding:
                      EdgeInsets.symmetric(vertical: 6.0, horizontal: 8),
                      child: Text(
                        'Order Cancelled',
                        style: TextStyle(color: Colors.white, fontSize: 10),
                      ),
                    )),
                SizedBox(
                  height: 10,
                ),
                Container(
                  width: MediaQuery.sizeOf(context).width / 1.5,
                  height: .2,
                  color: Colors.grey,
                ),
                SizedBox(
                  height: 6,
                ),
                Text('Dutch Bangla Bank Limited',style: TextStyle(color: Colors.red,fontWeight: FontWeight.bold,fontSize: 16),),
                SizedBox(
                  height: 18,
                ),
                Image.asset('images/gold_bottom.png'),
              ],
            ),
          ),
        ),
        SizedBox(
          height: 20,
        ),
        Card(
          child: Container(
            width: MediaQuery.sizeOf(context).width / 1.2,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(6), color: lightPurple),
            child: Column(
              children: [
                Stack(
                  alignment: Alignment.center,
                  children: [
                    Image.asset(
                      'images/platinum_top.png',
                      height: 40,
                      fit: BoxFit.cover,
                      width: 280,
                    ),
                    Positioned(
                        bottom: 0,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            'PLATINUM',
                            style: TextStyle(
                                color: purple,
                                fontWeight: FontWeight.bold,
                                fontSize: 16),
                          ),
                        ))
                  ],
                ),
                SizedBox(
                  height: 8,
                ),
                const Text(
                  '\$120.00',
                  style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold),
                ),
                Text('10% Commission'),
                SizedBox(
                  height: 5,
                ),
                Container(
                  width: MediaQuery.sizeOf(context).width / 1.5,
                  height: .2,
                  color: Colors.grey,
                ),
                SizedBox(
                  height: 5,
                ),
                Image.asset(
                  'images/warning.png',
                  height: 30,
                ),
                SizedBox(
                  height: 5,
                ),
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 30.0),
                  child: Text(
                    '''Sorry! This package is no longer available at the moment. Another person has bought the package. Please try a new package''',
                    style: TextStyle(fontSize: 10, color: Colors.red),
                    textAlign: TextAlign.center,
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(4),
                        color: Colors.red),
                    child: const Padding(
                      padding:
                      EdgeInsets.symmetric(vertical: 6.0, horizontal: 8),
                      child: Text(
                        'Order Cancelled',
                        style: TextStyle(color: Colors.white, fontSize: 10),
                      ),
                    )),
                SizedBox(
                  height: 10,
                ),
                Container(
                  width: MediaQuery.sizeOf(context).width / 1.5,
                  height: .2,
                  color: Colors.grey,
                ),
                SizedBox(
                  height: 6,
                ),
                Text('Dutch Bangla Bank Limited',style: TextStyle(color: Colors.red,fontWeight: FontWeight.bold,fontSize: 16),),
                SizedBox(
                  height: 18,
                ),
                Image.asset('images/platinum_bottom.png'),
              ],
            ),
          ),
        )
      ],
    );
  }
}

class CompletedCardWidgets extends StatelessWidget {
  const CompletedCardWidgets({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Container(
          height: 30,
          margin: EdgeInsets.all(10),
          width: MediaQuery.sizeOf(context).width,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(6), color: Color(0xffF1F1F2)),
          child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 7.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Completed Package History',
                    style: TextStyle(color: dark),
                  ),
                ],
              )),
        ),
        SizedBox(
          height: 10,
        ),
        Card(
          child: Container(
            width: MediaQuery.sizeOf(context).width / 1.2,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(6), color: lightBlue),
            child: Column(
              children: [
                Stack(
                  alignment: Alignment.center,
                  children: [
                    Image.asset(
                      'images/blue_top.png',
                      height: 40,
                      fit: BoxFit.cover,
                      width: 280,
                    ),
                    const Positioned(
                        bottom: 0,
                        child: Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Text(
                            'SILVER',
                            style: TextStyle(
                                color: Colors.blue,
                                fontWeight: FontWeight.bold,
                                fontSize: 16),
                          ),
                        ))
                  ],
                ),
                SizedBox(
                  height: 8,
                ),
                Text(
                  '\$50.00',
                  style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold),
                ),
                Text('8% Commission'),
                SizedBox(
                  height: 5,
                ),
                Container(
                  width: MediaQuery.sizeOf(context).width / 1.5,
                  height: .2,
                  color: Colors.grey,
                ),
                SizedBox(
                  height: 5,
                ),
                Image.asset(
                  'images/blue_tick.png',
                  height: 35,
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(4),
                        color: Colors.blue),
                    child: const Padding(
                      padding:
                      EdgeInsets.symmetric(vertical: 6.0, horizontal: 8),
                      child: Text(
                        'Order Successful',
                        style: TextStyle(color: Colors.white, fontSize: 12),
                      ),
                    )),
                SizedBox(
                  height: 10,
                ),
                Container(
                  width: MediaQuery.sizeOf(context).width / 1.5,
                  height: .2,
                  color: Colors.grey,
                ),
                SizedBox(
                  height: 5,
                ),
                Text(
                  'Code #02',
                  style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Colors.red),
                ),
                SizedBox(
                  height: 5,
                ),
                Container(
                  width: MediaQuery.sizeOf(context).width / 1.5,
                  height: .2,
                  color: Colors.grey,
                ),
                SizedBox(
                  height: 6,
                ),

                Text('Dutch Bangla Bank Limited',style: TextStyle(color: Colors.red,fontWeight: FontWeight.bold,fontSize: 16),),
                SizedBox(
                  height: 10,
                ),
                Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(4),
                        color: Colors.blue),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          vertical: 6.0, horizontal: 8),
                      child: Text(
                        'Pay Amount : ₹12366.33',
                        style: TextStyle(color: Colors.white, fontSize: 12),
                      ),
                    )),
                SizedBox(
                  height: 18,
                ),
                Image.asset('images/bottom_card.png'),
              ],
            ),
          ),
        ),
        SizedBox(
          height: 20,
        ),
        Card(
          child: Container(
            width: MediaQuery.sizeOf(context).width / 1.2,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(6), color: lightOrange),
            child: Column(
              children: [
                Stack(
                  alignment: Alignment.center,
                  children: [
                    Image.asset(
                      'images/gold_top.png',
                      height: 40,
                      fit: BoxFit.cover,
                      width: 280,
                    ),
                    Positioned(
                        bottom: 0,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            'GOLD',
                            style: TextStyle(
                                color: deeporange,
                                fontWeight: FontWeight.bold,
                                fontSize: 16),
                          ),
                        ))
                  ],
                ),
                SizedBox(
                  height: 8,
                ),
                Text(
                  '\$120.00',
                  style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold),
                ),
                Text('9% Commission'),
                SizedBox(
                  height: 5,
                ),
                Container(
                  width: MediaQuery.sizeOf(context).width / 1.5,
                  height: .2,
                  color: Colors.grey,
                ),
                SizedBox(
                  height: 5,
                ),
                Image.asset(
                  'images/orange_tick.png',
                  height: 35,
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(4),
                        color: deeporange),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          vertical: 6.0, horizontal: 8),
                      child: Text(
                        'Order Successful',
                        style: TextStyle(color: Colors.white, fontSize: 12),
                      ),
                    )),
                SizedBox(
                  height: 10,
                ),
                Container(
                  width: MediaQuery.sizeOf(context).width / 1.5,
                  height: .2,
                  color: Colors.grey,
                ),
                SizedBox(
                  height: 5,
                ),
                Text(
                  'Code #02',
                  style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Colors.red),
                ),
                SizedBox(
                  height: 5,
                ),
                Container(
                  width: MediaQuery.sizeOf(context).width / 1.5,
                  height: .2,
                  color: Colors.grey,
                ),
                SizedBox(
                  height: 6,
                ),
                Text('Dutch Bangla Bank Limited',style: TextStyle(color: Colors.red,fontWeight: FontWeight.bold,fontSize: 16),),
                SizedBox(
                  height: 10,
                ),
                Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(4),
                        color: deeporange),
                    child: const Padding(
                      padding:
                      EdgeInsets.symmetric(vertical: 6.0, horizontal: 8),
                      child: Text(
                        'Pay Amount : ₹12366.33',
                        style: TextStyle(color: Colors.white, fontSize: 12),
                      ),
                    )),
                SizedBox(
                  height: 18,
                ),
                Image.asset('images/gold_bottom.png'),
              ],
            ),
          ),
        ),
        SizedBox(
          height: 20,
        ),
        Card(
          child: Container(
            width: MediaQuery.sizeOf(context).width / 1.2,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(6), color: lightPurple),
            child: Column(
              children: [
                Stack(
                  alignment: Alignment.center,
                  children: [
                    Image.asset(
                      'images/platinum_top.png',
                      height: 40,
                      fit: BoxFit.cover,
                      width: 280,
                    ),
                    Positioned(
                        bottom: 0,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            'PLATINUM',
                            style: TextStyle(
                                color: purple,
                                fontWeight: FontWeight.bold,
                                fontSize: 16),
                          ),
                        ))
                  ],
                ),
                SizedBox(
                  height: 8,
                ),
                const Text(
                  '\$120.00',
                  style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold),
                ),
                Text('10% Commission'),
                SizedBox(
                  height: 5,
                ),
                Container(
                  width: MediaQuery.sizeOf(context).width / 1.5,
                  height: .2,
                  color: Colors.grey,
                ),
                SizedBox(
                  height: 5,
                ),
                Image.asset(
                  'images/purple_tick.png',
                  height: 35,
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(4), color: purple),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          vertical: 6.0, horizontal: 8),
                      child: Text(
                        'Order Successful',
                        style: TextStyle(color: Colors.white, fontSize: 12),
                      ),
                    )),
                SizedBox(
                  height: 10,
                ),
                Container(
                  width: MediaQuery.sizeOf(context).width / 1.5,
                  height: .2,
                  color: Colors.grey,
                ),
                SizedBox(
                  height: 5,
                ),
                Text(
                  'Code #02',
                  style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Colors.red),
                ),
                SizedBox(
                  height: 5,
                ),
                Container(
                  width: MediaQuery.sizeOf(context).width / 1.5,
                  height: .2,
                  color: Colors.grey,
                ),
                SizedBox(
                  height: 6,
                ),
                Text('Dutch Bangla Bank Limited',style: TextStyle(color: Colors.red,fontWeight: FontWeight.bold,fontSize: 16),),
                SizedBox(
                  height: 10,
                ),
                Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(4), color: purple),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          vertical: 6.0, horizontal: 8),
                      child: Text(
                        'Pay Amount : ₹12366.33',
                        style: TextStyle(color: Colors.white, fontSize: 12),
                      ),
                    )),
                SizedBox(
                  height: 18,
                ),
                Image.asset('images/platinum_bottom.png'),
              ],
            ),
          ),
        )
      ],
    );
  }
}

class ProcessingCardWidgets extends StatelessWidget {
  const ProcessingCardWidgets({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Container(
          height: 30,
          margin: EdgeInsets.all(10),
          width: MediaQuery.sizeOf(context).width,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(6), color: Color(0xffF1F1F2)),
          child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 7.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Processing Package History',
                    style: TextStyle(color: dark),
                  ),
                ],
              )),
        ),
        SizedBox(
          height: 10,
        ),
        Card(
          child: Container(
            width: MediaQuery.sizeOf(context).width / 1.2,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(6), color: lightBlue),
            child: Column(
              children: [
                Stack(
                  alignment: Alignment.center,
                  children: [
                    Image.asset(
                      'images/blue_top.png',
                      height: 40,
                      fit: BoxFit.cover,
                      width: 280,
                    ),
                    const Positioned(
                        bottom: 0,
                        child: Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Text(
                            'SILVER',
                            style: TextStyle(
                                color: Colors.blue,
                                fontWeight: FontWeight.bold,
                                fontSize: 16),
                          ),
                        ))
                  ],
                ),
                SizedBox(
                  height: 8,
                ),
                Text(
                  '\$50.00',
                  style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold),
                ),
                Text(
                  '8% Commission',
                ),
                SizedBox(
                  height: 6,
                ),
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 30),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(4),
                    border: Border.all(width: 1, color: Colors.blue),
                  ),
                  child: Row(
                    children: [
                      Expanded(
                        child: Container(
                          decoration: BoxDecoration(color: Colors.blue),
                          child: Padding(
                            padding: const EdgeInsets.all(4.0),
                            child: Text(
                              'Upload Payment Proof',
                              style:
                              TextStyle(color: Colors.white, fontSize: 12),
                            ),
                          ),
                        ),
                      ),
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.all(4.0),
                          child: Text(
                            'No File Chosen',
                            style: TextStyle(fontSize: 12, color: dark),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: 8,
                ),
                Text(
                  'Code #01',
                  style: TextStyle(
                      fontSize: 16, fontWeight: FontWeight.bold, color: dark),
                ),
                SizedBox(
                  height: 6,
                ),

                Container(
                  width: MediaQuery.sizeOf(context).width / 1.5,
                  height: .2,
                  color: Colors.grey,
                ),
                SizedBox(
                  height: 4,
                ),
                Text('Dutch Bangla Bank Limited',style: TextStyle(color: Colors.red,fontWeight: FontWeight.bold,fontSize: 16),),
                SizedBox(
                  height: 6,
                ),
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 40),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    border: Border.all(width: 1, color: Colors.red),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        vertical: 2.0, horizontal: 40),
                    child: Column(
                      children: [
                        Text(
                          'You have to pay within',
                          style: TextStyle(color: Colors.red, fontSize: 12),
                        ),
                        Text(
                          '3D: 0H: 59M: 44S',
                          style: TextStyle(
                              color: Colors.red, fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 8,
                ),
                Container(
                  width: MediaQuery.sizeOf(context).width / 1.5,
                  height: .2,
                  color: Colors.grey,
                ),
                SizedBox(
                  height: 4,
                ),
                Text(
                  'Bank Details',
                  style: TextStyle(
                      fontWeight: FontWeight.bold, color: dark,fontSize: 16),
                ),
                SizedBox(
                  height: 2,
                ),
                Container(
                  width: MediaQuery.sizeOf(context).width / 3,
                  height: .2,
                  color: Colors.blue,
                ),
                SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('Bank name :',style: TextStyle(fontSize: 10,color: dark),),
                      Text('Dutch Bangla Bank Limited',style: TextStyle(fontSize: 10,color: dark),),

                    ],
                  ),
                ),
                SizedBox(height: 3,),
                Container(
                  width: MediaQuery.sizeOf(context).width/1.3,
                  height: .2,
                  color: Colors.blue,
                ),
                SizedBox(height: 3,),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('Account name :',style: TextStyle(fontSize: 10,color: dark),),
                      Text('Morshed Bao',style: TextStyle(fontSize: 10,color: dark),),

                    ],
                  ),
                ),
                SizedBox(height: 3,),
                Container(
                  width: MediaQuery.sizeOf(context).width/1.3,
                  height: .2,
                  color: Colors.blue,
                ),
                SizedBox(height: 3,),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('Bank Account :',style: TextStyle(fontSize: 10,color: dark),),
                      Text('M232323322',style: TextStyle(fontSize: 10,color: dark),),

                    ],
                  ),
                ),
                SizedBox(height: 3,),
                Container(
                  width: MediaQuery.sizeOf(context).width/1.3,
                  height: .2,
                  color: Colors.blue,
                ),
                SizedBox(height: 3,),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('Bank Branch :',style: TextStyle(fontSize: 10,color: dark),),
                      Text('Dhaka',style: TextStyle(fontSize: 10,color: dark),),

                    ],
                  ),
                ),
                SizedBox(height: 3,),
                Container(
                  width: MediaQuery.sizeOf(context).width/1.3,
                  height: .2,
                  color: Colors.blue,
                ),
                SizedBox(height: 3,),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('Swift Code :',style: TextStyle(fontSize: 10,color: dark),),
                      Text('DBBL',style: TextStyle(fontSize: 10,color: dark),),

                    ],
                  ),
                ),
                SizedBox(height: 3,),
                Container(
                  width: MediaQuery.sizeOf(context).width/1.3,
                  height: .2,
                  color: Colors.blue,
                ),
                SizedBox(height: 3,),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('Bank Country :',style: TextStyle(fontSize: 10,color: dark),),
                      Text('Bangladesh',style: TextStyle(fontSize: 10,color: dark),),

                    ],
                  ),
                ),
                Container(
                  width: MediaQuery.sizeOf(context).width/1.3,
                  height: .2,
                  color: Colors.blue,
                ),
                SizedBox(
                  height: 16,
                ),
                Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(4),
                        color: Colors.blue),
                    child: const Padding(
                      padding:
                      EdgeInsets.symmetric(vertical: 6.0, horizontal: 8),
                      child: Text(
                        'Pay Amount : ₹12366.33',
                        style: TextStyle(color: Colors.white, fontSize: 12),
                      ),
                    )),
                SizedBox(
                  height: 18,
                ),
                Image.asset('images/bottom_card.png'),
              ],
            ),
          ),
        ),
        SizedBox(
          height: 20,
        ),
        Card(
          child: Container(
            width: MediaQuery.sizeOf(context).width / 1.2,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(6), color: lightOrange),
            child: Column(
              children: [
                Stack(
                  alignment: Alignment.center,
                  children: [
                    Image.asset(
                      'images/gold_top.png',
                      height: 40,
                      fit: BoxFit.cover,
                      width: 280,
                    ),
                    Positioned(
                        bottom: 0,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            'GOLD',
                            style: TextStyle(
                                color: deeporange,
                                fontWeight: FontWeight.bold,
                                fontSize: 16),
                          ),
                        ))
                  ],
                ),
                SizedBox(
                  height: 8,
                ),
                Text(
                  '\$120.00',
                  style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold),
                ),
                Text('9% Commission'),
                SizedBox(
                  height: 6,
                ),
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 30),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(4),
                    border: Border.all(width: 1, color: deeporange),
                  ),
                  child: Row(
                    children: [
                      Expanded(
                        child: Container(
                          decoration: BoxDecoration(color: deeporange),
                          child: Padding(
                            padding: const EdgeInsets.all(4.0),
                            child: Text(
                              'Upload Payment Proof',
                              style:
                              TextStyle(color: Colors.white, fontSize: 12),
                            ),
                          ),
                        ),
                      ),
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.all(4.0),
                          child: Text(
                            'No File Chosen',
                            style: TextStyle(fontSize: 12, color: dark),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: 8,
                ),
                Text(
                  'Code #01',
                  style: TextStyle(
                      fontSize: 16, fontWeight: FontWeight.bold, color: dark),
                ),
                SizedBox(
                  height: 6,
                ),

                Container(
                  width: MediaQuery.sizeOf(context).width / 1.5,
                  height: .2,
                  color: Colors.grey,
                ),
                SizedBox(
                  height: 4,
                ),
                Text('Dutch Bangla Bank Limited',style: TextStyle(color: Colors.red,fontWeight: FontWeight.bold,fontSize: 16),),
                SizedBox(
                  height: 6,
                ),
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 40),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    border: Border.all(width: 1, color: Colors.red),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        vertical: 2.0, horizontal: 40),
                    child: Column(
                      children: [
                        Text(
                          'You have to pay within',
                          style: TextStyle(color: Colors.red, fontSize: 12),
                        ),
                        Text(
                          '3D: 0H: 59M: 44S',
                          style: TextStyle(
                              color: Colors.red, fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 8,
                ),
                Container(
                  width: MediaQuery.sizeOf(context).width / 1.5,
                  height: .2,
                  color: Colors.grey,
                ),
                SizedBox(
                  height: 4,
                ),
                Text(
                  'Bank Details',
                  style: TextStyle(
                      fontWeight: FontWeight.bold, color: dark,fontSize: 16),
                ),
                SizedBox(
                  height: 2,
                ),
                Container(
                  width: MediaQuery.sizeOf(context).width / 3,
                  height: .2,
                  color: deeporange,
                ),
                SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('Bank name :',style: TextStyle(fontSize: 10,color: dark),),
                      Text('Dutch Bangla Bank Limited',style: TextStyle(fontSize: 10,color: dark),),

                    ],
                  ),
                ),
                SizedBox(height: 3,),
                Container(
                  width: MediaQuery.sizeOf(context).width/1.3,
                  height: .2,
                  color: deeporange,
                ),
                SizedBox(height: 3,),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('Account name :',style: TextStyle(fontSize: 10,color: dark),),
                      Text('Morshed Bao',style: TextStyle(fontSize: 10,color: dark),),

                    ],
                  ),
                ),
                SizedBox(height: 3,),
                Container(
                  width: MediaQuery.sizeOf(context).width/1.3,
                  height: .2,
                  color: deeporange,
                ),
                SizedBox(height: 3,),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('Bank Account :',style: TextStyle(fontSize: 10,color: dark),),
                      Text('M232323322',style: TextStyle(fontSize: 10,color: dark),),

                    ],
                  ),
                ),
                SizedBox(height: 3,),
                Container(
                  width: MediaQuery.sizeOf(context).width/1.3,
                  height: .2,
                  color: deeporange,
                ),
                SizedBox(height: 3,),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('Bank Branch :',style: TextStyle(fontSize: 10,color: dark),),
                      Text('Dhaka',style: TextStyle(fontSize: 10,color: dark),),

                    ],
                  ),
                ),
                SizedBox(height: 3,),
                Container(
                  width: MediaQuery.sizeOf(context).width/1.3,
                  height: .2,
                  color: deeporange,
                ),
                SizedBox(height: 3,),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('Swift Code :',style: TextStyle(fontSize: 10,color: dark),),
                      Text('DBBL',style: TextStyle(fontSize: 10,color: dark),),

                    ],
                  ),
                ),
                SizedBox(height: 3,),
                Container(
                  width: MediaQuery.sizeOf(context).width/1.3,
                  height: .2,
                  color: deeporange,
                ),
                SizedBox(height: 3,),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('Bank Country :',style: TextStyle(fontSize: 10,color: dark),),
                      Text('Bangladesh',style: TextStyle(fontSize: 10,color: dark),),

                    ],
                  ),
                ),
                Container(
                  width: MediaQuery.sizeOf(context).width/1.3,
                  height: .2,
                  color: deeporange,
                ),
                SizedBox(
                  height: 16,
                ),
                Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(4),
                        color: deeporange),
                    child: const Padding(
                      padding:
                      EdgeInsets.symmetric(vertical: 6.0, horizontal: 8),
                      child: Text(
                        'Pay Amount : ₹12366.33',
                        style: TextStyle(color: Colors.white, fontSize: 12),
                      ),
                    )),
                SizedBox(
                  height: 18,
                ),
                Image.asset('images/gold_bottom.png'),
              ],
            ),
          ),
        ),
        SizedBox(
          height: 20,
        ),
        Card(
          child: Container(
            width: MediaQuery.sizeOf(context).width / 1.2,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(6), color: lightPurple),
            child: Column(
              children: [
                Stack(
                  alignment: Alignment.center,
                  children: [
                    Image.asset(
                      'images/platinum_top.png',
                      height: 40,
                      fit: BoxFit.cover,
                      width: 280,
                    ),
                    Positioned(
                        bottom: 0,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            'PLATINUM',
                            style: TextStyle(
                                color: purple,
                                fontWeight: FontWeight.bold,
                                fontSize: 16),
                          ),
                        ))
                  ],
                ),
                SizedBox(
                  height: 8,
                ),
                Text(
                  '\$120.00',
                  style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold),
                ),
                Text('10% Commission'),
                SizedBox(
                  height: 6,
                ),
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 30),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(4),
                    border: Border.all(width: 1, color: purple),
                  ),
                  child: Row(
                    children: [
                      Expanded(
                        child: Container(
                          decoration: BoxDecoration(color: purple),
                          child: Padding(
                            padding: const EdgeInsets.all(4.0),
                            child: Text(
                              'Upload Payment Proof',
                              style:
                              TextStyle(color: Colors.white, fontSize: 12),
                            ),
                          ),
                        ),
                      ),
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.all(4.0),
                          child: Text(
                            'No File Chosen',
                            style: TextStyle(fontSize: 12, color: dark),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: 8,
                ),
                Text(
                  'Code #01',
                  style: TextStyle(
                      fontSize: 16, fontWeight: FontWeight.bold, color: dark),
                ),
                SizedBox(
                  height: 6,
                ),

                Container(
                  width: MediaQuery.sizeOf(context).width / 1.5,
                  height: .2,
                  color: Colors.grey,
                ),
                SizedBox(
                  height: 4,
                ),
                Text('Dutch Bangla Bank Limited',style: TextStyle(color: Colors.red,fontWeight: FontWeight.bold,fontSize: 16),),
                SizedBox(
                  height: 6,
                ),
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 40),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    border: Border.all(width: 1, color: Colors.red),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        vertical: 2.0, horizontal: 40),
                    child: Column(
                      children: [
                        Text(
                          'You have to pay within',
                          style: TextStyle(color: Colors.red, fontSize: 12),
                        ),
                        Text(
                          '3D: 0H: 59M: 44S',
                          style: TextStyle(
                              color: Colors.red, fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 8,
                ),
                Container(
                  width: MediaQuery.sizeOf(context).width / 1.5,
                  height: .2,
                  color: Colors.grey,
                ),
                SizedBox(
                  height: 4,
                ),
                Text(
                  'Bank Details',
                  style: TextStyle(
                      fontWeight: FontWeight.bold, color: dark,fontSize: 16),
                ),
                SizedBox(
                  height: 2,
                ),
                Container(
                  width: MediaQuery.sizeOf(context).width / 3,
                  height: .2,
                  color: purple,
                ),
                SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('Bank name :',style: TextStyle(fontSize: 10,color: dark),),
                      Text('Dutch Bangla Bank Limited',style: TextStyle(fontSize: 10,color: dark),),

                    ],
                  ),
                ),
                SizedBox(height: 3,),
                Container(
                  width: MediaQuery.sizeOf(context).width/1.3,
                  height: .2,
                  color: purple,
                ),
                SizedBox(height: 3,),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('Account name :',style: TextStyle(fontSize: 10,color: dark),),
                      Text('Morshed Bao',style: TextStyle(fontSize: 10,color: dark),),

                    ],
                  ),
                ),
                SizedBox(height: 3,),
                Container(
                  width: MediaQuery.sizeOf(context).width/1.3,
                  height: .2,
                  color: purple,
                ),
                SizedBox(height: 3,),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('Bank Account :',style: TextStyle(fontSize: 10,color: dark),),
                      Text('M232323322',style: TextStyle(fontSize: 10,color: dark),),

                    ],
                  ),
                ),
                SizedBox(height: 3,),
                Container(
                  width: MediaQuery.sizeOf(context).width/1.3,
                  height: .2,
                  color: purple,
                ),
                SizedBox(height: 3,),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('Bank Branch :',style: TextStyle(fontSize: 10,color: dark),),
                      Text('Dhaka',style: TextStyle(fontSize: 10,color: dark),),

                    ],
                  ),
                ),
                SizedBox(height: 3,),
                Container(
                  width: MediaQuery.sizeOf(context).width/1.3,
                  height: .2,
                  color: purple,
                ),
                SizedBox(height: 3,),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('Swift Code :',style: TextStyle(fontSize: 10,color: dark),),
                      Text('DBBL',style: TextStyle(fontSize: 10,color: dark),),

                    ],
                  ),
                ),
                SizedBox(height: 3,),
                Container(
                  width: MediaQuery.sizeOf(context).width/1.3,
                  height: .2,
                  color: purple,
                ),
                SizedBox(height: 3,),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('Bank Country :',style: TextStyle(fontSize: 10,color: dark),),
                      Text('Bangladesh',style: TextStyle(fontSize: 10,color: dark),),

                    ],
                  ),
                ),
                Container(
                  width: MediaQuery.sizeOf(context).width/1.3,
                  height: .2,
                  color: purple,
                ),
                SizedBox(
                  height: 16,
                ),
                Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(4),
                        color: purple),
                    child: const Padding(
                      padding:
                      EdgeInsets.symmetric(vertical: 6.0, horizontal: 8),
                      child: Text(
                        'Pay Amount : ₹12366.33',
                        style: TextStyle(color: Colors.white, fontSize: 12),
                      ),
                    )),
                SizedBox(
                  height: 18,
                ),

                Image.asset('images/platinum_bottom.png'),
              ],
            ),
          ),
        )
      ],
    );
  }
}

class OrderCardWidgets extends StatelessWidget {
  const OrderCardWidgets({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Container(
          height: 30,
          margin: EdgeInsets.all(10),
          width: MediaQuery.sizeOf(context).width,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(6), color: Color(0xffF1F1F2)),
          child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 7.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Order Package History',
                    style: TextStyle(color: dark),
                  ),
                ],
              )),
        ),
        SizedBox(
          height: 10,
        ),
        Card(
          child: Container(
            width: MediaQuery.sizeOf(context).width / 1.2,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(6), color: lightBlue),
            child: Column(
              children: [
                Stack(
                  alignment: Alignment.center,
                  children: [
                    Image.asset(
                      'images/blue_top.png',
                      height: 40,
                      fit: BoxFit.cover,
                      width: 280,
                    ),
                    Positioned(
                        bottom: 0,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            'SILVER',
                            style: TextStyle(
                                color: Colors.blue,
                                fontWeight: FontWeight.bold,
                                fontSize: 16),
                          ),
                        ))
                  ],
                ),
                SizedBox(
                  height: 8,
                ),
                Text(
                  '\$50.00',
                  style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold),
                ),
                Text('8% Commission'),
                SizedBox(
                  height: 5,
                ),
                Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(4),
                        color: Colors.blue),
                    margin: EdgeInsets.symmetric(horizontal: 16),
                    child: const Padding(
                      padding:
                      EdgeInsets.symmetric(vertical: 2.0, horizontal: 12),
                      child: Row(
                        children: [
                          Icon(
                            Icons.telegram,
                            color: Colors.white,
                            size: 36,
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Expanded(
                              child: Text(
                                'Please Contact us via Telegram @GloTicketPack_bot for withdrawal Process. First Come, First Serve',
                                style:
                                TextStyle(color: Colors.white, fontSize: 9.5),
                                textAlign: TextAlign.center,
                              )),
                        ],
                      ),
                    )),
                SizedBox(
                  height: 8,
                ),
                Text(
                  'Code #01',
                  style: TextStyle(
                      fontSize: 16, fontWeight: FontWeight.bold, color: dark),
                ),
                SizedBox(
                  height: 4,
                ),
                Container(
                  width: MediaQuery.sizeOf(context).width / 1.5,
                  height: .2,
                  color: Colors.grey,
                ),
                SizedBox(
                  height: 4,
                ),
                Column(
                  children: [
                    Text('Bank Name',style: TextStyle(color: dark),),
                    SizedBox(height: 4,),
                    Text('Dutch Bangla Bank Limited',style: TextStyle(color: Colors.red,fontWeight: FontWeight.bold,fontSize: 16),),
                    SizedBox(height: 4,),
                    Container(
                      width: MediaQuery.sizeOf(context).width / 1.5,
                      height: .2,
                      color: Colors.grey,
                    ),
                    SizedBox(height: 4,),
                    Text('Bangladesh',style: TextStyle(fontSize: 20,color: dark,fontWeight: FontWeight.bold,),)
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(4),
                        color: Colors.blue),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          vertical: 6.0, horizontal: 8),
                      child: Text(
                        'Pay Amount : ₹12366.33',
                        style: TextStyle(color: Colors.white, fontSize: 12),
                      ),
                    )),
                SizedBox(
                  height: 18,
                ),
                Image.asset('images/bottom_card.png'),
              ],
            ),
          ),
        ),
        SizedBox(
          height: 20,
        ),
        Card(
          child: Container(
            width: MediaQuery.sizeOf(context).width / 1.2,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(6), color: lightOrange),
            child: Column(
              children: [
                Stack(
                  alignment: Alignment.center,
                  children: [
                    Image.asset(
                      'images/gold_top.png',
                      height: 40,
                      fit: BoxFit.cover,
                      width: 280,
                    ),
                    Positioned(
                        bottom: 0,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            'GOLD',
                            style: TextStyle(
                                color: deeporange,
                                fontWeight: FontWeight.bold,
                                fontSize: 16),
                          ),
                        ))
                  ],
                ),
                SizedBox(
                  height: 8,
                ),
                Text(
                  '\$120.00',
                  style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold),
                ),
                Text('9% Commission'),
                SizedBox(
                  height: 5,
                ),
                Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(4),
                        color: deeporange),
                    margin: EdgeInsets.symmetric(horizontal: 16),
                    child: const Padding(
                      padding:
                      EdgeInsets.symmetric(vertical: 2.0, horizontal: 12),
                      child: Row(
                        children: [
                          Icon(
                            Icons.telegram,
                            color: Colors.white,
                            size: 36,
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Expanded(
                              child: Text(
                                'Please Contact us via Telegram @GloTicketPack_bot for withdrawal Process. First Come, First Serve',
                                style:
                                TextStyle(color: Colors.white, fontSize: 9.5),
                                textAlign: TextAlign.center,
                              )),
                        ],
                      ),
                    )),
                SizedBox(
                  height: 8,
                ),
                Text(
                  'Code #02',
                  style: TextStyle(
                      fontSize: 16, fontWeight: FontWeight.bold, color: dark),
                ),
                SizedBox(
                  height: 4,
                ),
                Container(
                  width: MediaQuery.sizeOf(context).width / 1.5,
                  height: .2,
                  color: Colors.grey,
                ),
                SizedBox(
                  height: 4,
                ),
                Column(
                  children: [
                    Text('Bank Name',style: TextStyle(color: dark),),
                    SizedBox(height: 4,),
                    Text('Dutch Bangla Bank Limited',style: TextStyle(color: Colors.red,fontWeight: FontWeight.bold,fontSize: 16),),
                    SizedBox(height: 4,),
                    Container(
                      width: MediaQuery.sizeOf(context).width / 1.5,
                      height: .2,
                      color: Colors.grey,
                    ),
                    SizedBox(height: 4,),
                    Text('Bangladesh',style: TextStyle(fontSize: 20,color: dark,fontWeight: FontWeight.bold,),)
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(4),
                        color: deeporange),
                    child: const Padding(
                      padding:
                      EdgeInsets.symmetric(vertical: 6.0, horizontal: 8),
                      child: Text(
                        'Pay Amount : ₹12366.33',
                        style: TextStyle(color: Colors.white, fontSize: 12),
                      ),
                    )),
                SizedBox(
                  height: 18,
                ),
                Image.asset('images/gold_bottom.png'),
              ],
            ),
          ),
        ),
        SizedBox(
          height: 20,
        ),
        Card(
          child: Container(
            width: MediaQuery.sizeOf(context).width / 1.2,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(6), color: lightPurple),
            child: Column(
              children: [
                Stack(
                  alignment: Alignment.center,
                  children: [
                    Image.asset(
                      'images/platinum_top.png',
                      height: 40,
                      fit: BoxFit.cover,
                      width: 280,
                    ),
                    Positioned(
                        bottom: 0,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            'PLATINUM',
                            style: TextStyle(
                                color: purple,
                                fontWeight: FontWeight.bold,
                                fontSize: 16),
                          ),
                        ))
                  ],
                ),
                SizedBox(
                  height: 8,
                ),
                Text(
                  '\$120.00',
                  style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold),
                ),
                Text('10% Commission'),
                SizedBox(
                  height: 5,
                ),
                Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(4), color: purple),
                    margin: EdgeInsets.symmetric(horizontal: 16),
                    child: const Padding(
                      padding:
                      EdgeInsets.symmetric(vertical: 2.0, horizontal: 12),
                      child: Row(
                        children: [
                          Icon(
                            Icons.telegram,
                            color: Colors.white,
                            size: 36,
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Expanded(
                              child: Text(
                                'Please Contact us via Telegram @GloTicketPack_bot for withdrawal Process. First Come, First Serve',
                                style:
                                TextStyle(color: Colors.white, fontSize: 9.5),
                                textAlign: TextAlign.center,
                              )),
                        ],
                      ),
                    )),
                SizedBox(
                  height: 8,
                ),
                Text(
                  'Code #03',
                  style: TextStyle(
                      fontSize: 16, fontWeight: FontWeight.bold, color: dark),
                ),
                SizedBox(
                  height: 4,
                ),
                Container(
                  width: MediaQuery.sizeOf(context).width / 1.5,
                  height: .2,
                  color: Colors.grey,
                ),
                SizedBox(
                  height: 4,
                ),
                Column(
                  children: [
                    Text('Bank Name',style: TextStyle(color: dark),),
                    SizedBox(height: 4,),
                    Text('Dutch Bangla Bank Limited',style: TextStyle(color: Colors.red,fontWeight: FontWeight.bold,fontSize: 16),),
                    SizedBox(height: 4,),
                    Container(
                      width: MediaQuery.sizeOf(context).width / 1.5,
                      height: .2,
                      color: Colors.grey,
                    ),
                    SizedBox(height: 4,),
                    Text('Bangladesh',style: TextStyle(fontSize: 20,color: dark,fontWeight: FontWeight.bold,),)
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(4), color: purple),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          vertical: 6.0, horizontal: 8),
                      child: Text(
                        'Pay Amount : ₹12366.33',
                        style: TextStyle(color: Colors.white, fontSize: 12),
                      ),
                    )),
                SizedBox(
                  height: 18,
                ),
                Image.asset('images/platinum_bottom.png'),
              ],
            ),
          ),
        )
      ],
    );
  }
}

class PackageWidgets extends StatelessWidget {
  const PackageWidgets({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Container(
          height: 30,
          margin: EdgeInsets.all(10),
          width: MediaQuery.sizeOf(context).width,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(6), color: Color(0xffF1F1F2)),
          child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 7.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'All Package History',
                    style: TextStyle(color: dark),
                  ),
                ],
              )),
        ),
        SizedBox(
          height: 10,
        ),
        Card(
          child: Container(
            width: MediaQuery.sizeOf(context).width / 1.2,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(6), color: lightBlue),
            child: Column(
              children: [
                Stack(
                  alignment: Alignment.center,
                  children: [
                    Image.asset(
                      'images/blue_top.png',
                      height: 40,
                      fit: BoxFit.cover,
                      width: 280,
                    ),
                    const Positioned(
                        bottom: 0,
                        child: Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Text(
                            'SILVER',
                            style: TextStyle(
                                color: Colors.blue,
                                fontWeight: FontWeight.bold,
                                fontSize: 16),
                          ),
                        ))
                  ],
                ),
                SizedBox(
                  height: 8,
                ),
                Text(
                  '\$50.00',
                  style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold),
                ),
                Text('8% Commission'),
                SizedBox(
                  height: 3,
                ),
                Container(
                  width: MediaQuery.sizeOf(context).width / 1.5,
                  height: .2,
                  color: Colors.grey,
                ),
                SizedBox(
                  height: 10,
                ),
                InkWell(
                  onTap: (){
                    showModalBottomSheet(
                      context: context,
                      builder: (BuildContext context) {
                        return ShowBottomBuyNow();
                      },
                    );
                  },
                  child: Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(4),
                          color: Colors.blue),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                            vertical: 6.0, horizontal: 12),
                        child: Text(
                          'BUY NOW',
                          style: TextStyle(color: Colors.white, fontSize: 12),
                        ),
                      )),
                ),
                SizedBox(
                  height: 4,
                ),
                Container(
                  width: MediaQuery.sizeOf(context).width / 1.5,
                  height: .2,
                  color: Colors.grey,
                ),
                SizedBox(
                  height: 4,
                ),
                Column(
                  children: [
                    Text('Bank Name',style: TextStyle(color: dark),),
                    SizedBox(height: 4,),
                    Text('Dutch Bangla Bank Limited',style: TextStyle(color: Colors.red,fontWeight: FontWeight.bold,fontSize: 16),),
                    SizedBox(height: 4,),
                    Container(
                      width: MediaQuery.sizeOf(context).width / 1.5,
                      height: .2,
                      color: Colors.grey,
                    ),
                    SizedBox(height: 4,),
                    Text('Bangladesh',style: TextStyle(fontSize: 20,color: dark,fontWeight: FontWeight.bold,),)
                  ],
                ),
                

                SizedBox(
                  height: 10,
                ),
                Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(4),
                        color: Colors.blue),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          vertical: 6.0, horizontal: 8),
                      child: Text(
                        'Pay Amount : ₹12366.33',
                        style: TextStyle(color: Colors.white, fontSize: 12),
                      ),
                    )),
                SizedBox(
                  height: 18,
                ),
                Image.asset('images/bottom_card.png'),
              ],
            ),
          ),
        ),
        SizedBox(
          height: 20,
        ),
        Card(
          child: Container(
            width: MediaQuery.sizeOf(context).width / 1.2,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(6), color: lightOrange),
            child: Column(
              children: [
                Stack(
                  alignment: Alignment.center,
                  children: [
                    Image.asset(
                      'images/gold_top.png',
                      height: 40,
                      fit: BoxFit.cover,
                      width: 280,
                    ),
                    Positioned(
                        bottom: 0,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            'GOLD',
                            style: TextStyle(
                                color: deeporange,
                                fontWeight: FontWeight.bold,
                                fontSize: 16),
                          ),
                        ))
                  ],
                ),
                SizedBox(
                  height: 8,
                ),
                Text(
                  '\$120.00',
                  style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold),
                ),
                Text('9% Commission'),
                SizedBox(
                  height: 3,
                ),
                Container(
                  width: MediaQuery.sizeOf(context).width / 1.5,
                  height: .2,
                  color: Colors.grey,
                ),
                SizedBox(
                  height: 10,
                ),
                InkWell(
                  onTap: (){
                    showModalBottomSheet(
                      context: context,
                      builder: (BuildContext context) {
                        return ShowBottomBuyNow();
                      },
                    );
                  },
                  child: Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(4),
                          color: deeporange),
                      child: const Padding(
                        padding:
                        EdgeInsets.symmetric(vertical: 6.0, horizontal: 12),
                        child: Text(
                          'BUY NOW',
                          style: TextStyle(color: Colors.white, fontSize: 12),
                        ),
                      )),
                ),
                SizedBox(
                  height: 4,
                ),
                Container(
                  width: MediaQuery.sizeOf(context).width / 1.5,
                  height: .2,
                  color: Colors.grey,
                ),
                SizedBox(
                  height: 4,
                ),
                Column(
                  children: [
                    Text('Bank Name',style: TextStyle(color: dark),),
                    SizedBox(height: 4,),
                    Text('Dutch Bangla Bank Limited',style: TextStyle(color: Colors.red,fontWeight: FontWeight.bold,fontSize: 16),),
                    SizedBox(height: 4,),
                    Container(
                      width: MediaQuery.sizeOf(context).width / 1.5,
                      height: .2,
                      color: Colors.grey,
                    ),
                    SizedBox(height: 4,),
                    Text('Bangladesh',style: TextStyle(fontSize: 20,color: dark,fontWeight: FontWeight.bold,),)
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(4),
                        color: deeporange),
                    child: const Padding(
                      padding:
                      EdgeInsets.symmetric(vertical: 6.0, horizontal: 8),
                      child: Text(
                        'Pay Amount : ₹12366.33',
                        style: TextStyle(color: Colors.white, fontSize: 12),
                      ),
                    )),
                SizedBox(
                  height: 18,
                ),
                Image.asset('images/gold_bottom.png'),
              ],
            ),
          ),
        ),
        SizedBox(
          height: 20,
        ),
        Card(
          child: Container(
            width: MediaQuery.sizeOf(context).width / 1.2,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(6), color: lightPurple),
            child: Column(
              children: [
                Stack(
                  alignment: Alignment.center,
                  children: [
                    Image.asset(
                      'images/platinum_top.png',
                      height: 40,
                      fit: BoxFit.cover,
                      width: 280,
                    ),
                    Positioned(
                        bottom: 0,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            'PLATINUM',
                            style: TextStyle(
                                color: purple,
                                fontWeight: FontWeight.bold,
                                fontSize: 16),
                          ),
                        ))
                  ],
                ),
                SizedBox(
                  height: 8,
                ),
                Text(
                  '\$120.00',
                  style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold),
                ),
                Text('10% Commission'),
                SizedBox(
                  height: 3,
                ),
                Container(
                  width: MediaQuery.sizeOf(context).width / 1.5,
                  height: .2,
                  color: Colors.grey,
                ),
                SizedBox(
                  height: 10,
                ),
                InkWell(
                  onTap: (){
                    showModalBottomSheet(
                      context: context,
                      builder: (BuildContext context) {
                        return ShowBottomBuyNow();
                      },
                    );
                  },
                  child: Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(4), color: purple),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                            vertical: 6.0, horizontal: 12),
                        child: Text(
                          'BUY NOW',
                          style: TextStyle(color: Colors.white, fontSize: 12),
                        ),
                      )),
                ),
                SizedBox(
                  height: 4,
                ),
                Container(
                  width: MediaQuery.sizeOf(context).width / 1.5,
                  height: .2,
                  color: Colors.grey,
                ),
                SizedBox(
                  height: 4,
                ),
                Column(
                  children: [
                    Text('Bank Name',style: TextStyle(color: dark),),
                    SizedBox(height: 4,),
                    Text('Dutch Bangla Bank Limited',style: TextStyle(color: Colors.red,fontWeight: FontWeight.bold,fontSize: 16),),
                    SizedBox(height: 4,),
                    Container(
                      width: MediaQuery.sizeOf(context).width / 1.5,
                      height: .2,
                      color: Colors.grey,
                    ),
                    SizedBox(height: 4,),
                    Text('Bangladesh',style: TextStyle(fontSize: 20,color: dark,fontWeight: FontWeight.bold,),)
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(4), color: purple),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          vertical: 6.0, horizontal: 8),
                      child: Text(
                        'Pay Amount : ₹12366.33',
                        style: TextStyle(color: Colors.white, fontSize: 12),
                      ),
                    )),
                SizedBox(
                  height: 18,
                ),
                Image.asset('images/platinum_bottom.png'),
              ],
            ),
          ),
        )
      ],
    );
  }
}

class ShowBottomBuyNow extends StatelessWidget {
  const ShowBottomBuyNow({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Card(
          child: ListView(
            shrinkWrap: true,
            children: [
              Align(
                child: IconButton(onPressed: (){Navigator.pop(context);}, icon: Icon(Icons.close)),
                alignment: Alignment.topRight,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('Order \$100.00 Package',style: TextStyle(fontSize: 22,color: dark),),
                ],
              ),
              SizedBox(height: 10,),
              Container(
                width: MediaQuery.sizeOf(context).width / 1.5,
                height: .2,
                color: Colors.grey,
              ),
              SizedBox(height: 10,),
              Align(child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 14.0,vertical: 5),
                child: Text('Contact Phone:',style: TextStyle(color: dark),),
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
                      hintText: '  Enter Contact Number',
                      errorStyle:TextStyle() ,
                      contentPadding: EdgeInsets.symmetric(horizontal: 10, vertical: 0),

                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5),
                      )),

                ),
              ),
              Align(child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 14.0,vertical: 5),
                child: Text('Contact Telegram:',style: TextStyle(color: dark),),
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
                      hintText: '  Contact Telegram Username',
                      errorStyle:TextStyle() ,
                      contentPadding: EdgeInsets.symmetric(horizontal: 10, vertical: 0),

                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5),
                      )),

                ),
              ),
              SizedBox(height: 20,),
              Row(

                mainAxisAlignment: MainAxisAlignment.center,

                children: [
                  ElevatedButton(onPressed: (){},style: ElevatedButton.styleFrom(backgroundColor: dark), child: const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 12.0),
                    child: Text('Cancel',style: TextStyle(color: Colors.white),),
                  ),),
                  SizedBox(width: 20,),
                  ElevatedButton(onPressed: (){},style: ElevatedButton.styleFrom(backgroundColor: deeporange), child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Icon(Icons.shopping_cart,color: dark,weight: 10,),
                      Text('Submit',style: TextStyle(color: dark),),
                    ],
                  ),),
                ],
              ),
              SizedBox(height: 40,),
            ],
          ),
        ),
      ),
    );
  }
}
