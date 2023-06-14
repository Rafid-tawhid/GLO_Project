import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:glo_ticket/utils/my_appbar.dart';

import '../../utils/constants.dart';

class BuyLotteryTicketsSingle extends StatefulWidget {
  const BuyLotteryTicketsSingle({Key? key}) : super(key: key);
  static const String routeName='/single_tickets';

  @override
  State<BuyLotteryTicketsSingle> createState() => _BuyLotteryTicketsSingleState();
}

class _BuyLotteryTicketsSingleState extends State<BuyLotteryTicketsSingle> {
  String? _type;
  int items=2;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: myAppbar(context),
      body: SafeArea(
        child: ListView(
          children: [

            Padding(
              padding: const EdgeInsets.all(5.0),
              child: Card(
                  elevation: 2,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Column(
                    children: [
                      Card(
                        elevation: 2,
                        color: Color(0xff043655),
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
                                    color: Colors.white,
                                    size: 25,
                                  ),
                                  SizedBox(
                                    width: 4,
                                  ),
                                  Text(
                                    'Last Time for Buying Ticket',
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 22),
                                  )
                                ],
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Text(
                                '0D: 08H: 15M: 03S',
                                style:
                                TextStyle(color: Colors.white, fontSize: 22),
                              )
                            ],
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 8.0,left: 3,right: 3),
                        child: Row(
                          children: [
                            SizedBox(
                              width: 5,
                            ),
                            Icon(
                              Icons.lightbulb_outline_rounded,
                              size: 25,
                              color: Colors.blue,
                            ),
                            SizedBox(
                              width: 2,
                            ),
                            Text(
                              'Select Play Type',
                              style: TextStyle(
                                  color: Colors.blue, fontSize: 16),
                            )
                          ],
                        ),
                      ),

                      Padding(
                        padding: const EdgeInsets.all(5.0),
                        child: Card(
                          elevation: 1,
                          child: DropdownButtonHideUnderline(
                            child: DropdownButtonFormField<String>(
                              isDense: true,
                              validator: (value) {
                                if (value == null) {
                                  return 'Select Play Type';
                                } else {
                                  return null;
                                }
                              },
                              decoration: InputDecoration(
                                filled: true,
                                enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(8),
                                  borderSide: BorderSide(color: Colors.grey,width: .1),
                                ),

                                contentPadding:
                                EdgeInsets.fromLTRB(15, 10, 15, 15),
                                fillColor: Colors.white,
                                isDense: true,
                              ),
                              hint: Text('Select Play Type'),
                              value: _type,
                              onChanged: (value) {
                                setState(() {
                                  _type = value;
                                });
                              },
                              items: ['NATIONAL', 'PCSO', 'BINGO', 'TOTO']
                                  .map((e) => DropdownMenuItem(
                                child: SizedBox(child: new Text(e)),
                                value: e,
                              ))
                                  .toList(),
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 8.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Expanded(
                              child: Text(
                                'Total Amount',
                                style: TextStyle(
                                  fontSize: 18,
                                ),
                                textAlign: TextAlign.center,
                              ),
                            ),
                            Expanded(
                                child: Text('Discount 20%',
                                    style: TextStyle(
                                        color: lightBgSecondaryColor,
                                        fontSize: 18),
                                    textAlign: TextAlign.center)),
                            Expanded(
                                child: Text('Bying Price',
                                    style: TextStyle(fontSize: 18),
                                    textAlign: TextAlign.center)),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(bottom: 8.0),
                        child: Row(
                          children: [
                            Expanded(
                              child: Padding(
                                padding: const EdgeInsets.all(5.0),
                                child: Card(
                                  child: Padding(
                                    padding: const EdgeInsets.all(5.0),
                                    child: Text(
                                      '25',
                                      textAlign: TextAlign.center,
                                      style: TextStyle(fontSize: 18,color: Colors.white),
                                    ),
                                  ),
                                  elevation: 2,
                                  color: Color(0xff043655),
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(5)),
                                ),
                              ),
                            ),
                            Expanded(
                              child: Padding(
                                padding: const EdgeInsets.all(5.0),
                                child: Card(
                                  child: Padding(
                                    padding: const EdgeInsets.all(5.0),
                                    child: Text(
                                      '5',
                                      textAlign: TextAlign.center,
                                      style: TextStyle(fontSize: 18,color: Colors.white),
                                    ),
                                  ),
                                  elevation: 2,
                                  color: Color(0xff043655),
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(5)),
                                ),
                              ),
                            ),
                            Expanded(
                              child: Padding(
                                padding: const EdgeInsets.all(5.0),
                                child: Card(
                                  child: Padding(
                                    padding: const EdgeInsets.all(5.0),
                                    child: Text(
                                      '20',
                                      textAlign: TextAlign.center,
                                      style: TextStyle(fontSize: 18,color: Colors.white),
                                    ),
                                  ),
                                  elevation: 2,
                                  color: Color(0xff043655),
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(5)),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  )),
            ),
            Padding(
              padding: const EdgeInsets.all(5.0),
              child: Card(
                elevation: 2,
                shape: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(6),
                    borderSide: BorderSide.none),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Expanded(
                            child: Text(
                              'Number',
                              style: TextStyle(
                                fontSize: 18,
                              ),
                              textAlign: TextAlign.center,
                            ),
                          ),
                          Expanded(
                              child: Text('Straight',
                                  style: TextStyle(
                                      color: lightBgSecondaryColor,
                                      fontSize: 18),
                                  textAlign: TextAlign.center)),
                          Expanded(
                              child: Text('Rumble',
                                  style: TextStyle(fontSize: 18),
                                  textAlign: TextAlign.center)),
                        ],
                      ),
                    ),
                    ListView.builder(
                      shrinkWrap: true,
                      physics: NeverScrollableScrollPhysics(),
                      itemCount: items,
                      itemBuilder: (context,index)=>Padding(
                        padding: const EdgeInsets.only(bottom: 8.0),
                        child: Row(
                          children: [
                            Expanded(
                              child: Padding(
                                padding: const EdgeInsets.all(5.0),
                                child: Card(
                                  child: Padding(
                                    padding: const EdgeInsets.all(5.0),
                                    child: Text(
                                      '125',
                                      textAlign: TextAlign.center,
                                      style: TextStyle(fontSize: 18),
                                    ),
                                  ),
                                  elevation: 2,
                                  color: lightBgThirdColor,
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(5)),
                                ),
                              ),
                            ),
                            Expanded(
                              child: Padding(
                                padding: const EdgeInsets.all(5.0),
                                child: Card(
                                  child: Padding(
                                    padding: const EdgeInsets.all(5.0),
                                    child: Text(
                                      '15',
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                          color: lightBgSecondaryColor,
                                          fontSize: 18),
                                    ),
                                  ),
                                  elevation: 2,
                                  color: lightBgThirdColor,
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(5)),
                                ),
                              ),
                            ),
                            Expanded(
                              child: Padding(
                                padding: const EdgeInsets.all(5.0),
                                child: Card(
                                  child: Padding(
                                    padding: const EdgeInsets.all(5.0),
                                    child: Text(
                                      '20',
                                      textAlign: TextAlign.center,
                                      style: TextStyle(fontSize: 18),
                                    ),
                                  ),
                                  elevation: 2,
                                  color: lightBgThirdColor,
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(5)),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),


                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        ElevatedButton(
                          onPressed: () {},
                          child: Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Icon(
                                Icons.refresh,
                                color: Colors.white,
                              ),
                              SizedBox(
                                width: 3,
                              ),
                              Text('Refresh')
                            ],
                          ),
                          style: ElevatedButton.styleFrom(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(6),
                              ),
                              backgroundColor: Color(0xff061596)),
                        ),
                        SizedBox(
                          width: 15,
                        ),
                        ElevatedButton(
                          onPressed: () {
                            items++;
                            setState(() {
                            });
                          },
                          child: Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Icon(
                                Icons.shopping_cart,
                                color: lightBgSecondaryColor,
                              ),
                              SizedBox(
                                width: 3,
                              ),
                              Text(
                                'Submit',
                                style: TextStyle(color: lightBgSecondaryColor),
                              )
                            ],
                          ),
                          style: ElevatedButton.styleFrom(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(6),
                              ),
                              backgroundColor: lightBgPrimaryColor),

                        )
                      ],
                    ),
                    SizedBox(
                      height: 15,
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
