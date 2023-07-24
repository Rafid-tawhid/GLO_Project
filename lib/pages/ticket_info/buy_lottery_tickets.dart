import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../utils/constants.dart';
import '../../utils/my_appbar.dart';
import '../../utils/transaction_sucessful.dart';
import '../profile_popup_pages/pin_setting.dart';
import '../profile_popup_pages/profile_page.dart';
import '../profile_popup_pages/saudia_page.dart';

class BuyTicketPage extends StatefulWidget {
  const BuyTicketPage({Key? key}) : super(key: key);
  static const String routeName = '/buy_tickets';

  @override
  State<BuyTicketPage> createState() => _BuyTicketPageState();
}

class _BuyTicketPageState extends State<BuyTicketPage> {
  String? _type;
  int items=5;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
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
                        child: InkWell(
                          onTap: (){
                            Navigator.pop(context);
                          },
                          child: Icon(
                            Icons.arrow_back,
                            color: Color(0xff061596),
                            size: 30,
                          ),
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
                            child: Container(
                              width: 50,
                              height: 55,
                              child: SvgPicture.asset(
                                'svg/national.svg',
                                fit: BoxFit.contain,
                              ),
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
                                    fontSize: 18,
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
                                        'images/ii.png',
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
                                        'images/c.png',
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
                  InkWell(
                    onTap: () async {
                      showDialog(context: context,
                          builder: (BuildContext context){
                            return Center(
                              child: Stack(
                                children: [
                                  Positioned(
                                    top:60,
                                    right: 10,
                                    left: 10,
                                    child: Column(
                                      mainAxisSize: MainAxisSize.min,
                                      children: [
                                        Container(
                                          decoration: BoxDecoration(
                                              color: Colors.white,
                                              borderRadius: BorderRadius.circular(10),
                                              border: Border.all(
                                                  color: Colors.blue,
                                                  width: 2
                                              )
                                          ),
                                          width: MediaQuery.of(context).size.width/1.2,
                                          child:  Column(
                                            mainAxisSize: MainAxisSize.min,
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            children: [
                                              Container(
                                                color: Colors.blue,
                                                width: MediaQuery.of(context).size.width/1.2,
                                                padding: const EdgeInsets.all(8.0),
                                                child: const Column(
                                                  mainAxisSize: MainAxisSize.min,
                                                  crossAxisAlignment: CrossAxisAlignment.start,
                                                  children: [
                                                    Text('My Account',style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white),),
                                                    SizedBox(height: 5,),
                                                    Text('Email: admin@gmail.com',style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white),),
                                                  ],
                                                ),
                                              ),
                                              Container(

                                                padding: EdgeInsets.symmetric(vertical: 10),
                                                child:  Column(
                                                  mainAxisSize: MainAxisSize.min,
                                                  crossAxisAlignment: CrossAxisAlignment.start,
                                                  children: [
                                                    CustomPaint(
                                                      painter: TrianglePainter(),
                                                    ),
                                                    InkWell(
                                                      onTap:(){
                                                        Navigator.pushNamed(context, Profile_page.routeName);
                                                      },
                                                      child: const Row(
                                                        mainAxisSize: MainAxisSize.min,
                                                        mainAxisAlignment: MainAxisAlignment.start,
                                                        children: [
                                                          Icon(Icons.keyboard_arrow_right_outlined,color: Colors.blue,),
                                                          Text('Profile',style: TextStyle(fontWeight: FontWeight.bold,color: Colors.blue,),),
                                                        ],
                                                      ),
                                                    ),
                                                    SizedBox(height: 5,),
                                                    InkWell(
                                                      onTap:(){
                                                        Navigator.pushNamed(context, PinSettingPage.routeName);
                                                      },
                                                      child: const Row(
                                                        mainAxisSize: MainAxisSize.min,
                                                        mainAxisAlignment: MainAxisAlignment.start,
                                                        children: [
                                                          Icon(Icons.keyboard_arrow_right_outlined,color: Colors.blue,),
                                                          Text('Change Pin',style: TextStyle(fontWeight: FontWeight.bold,color: Colors.blue,),),
                                                        ],
                                                      ),
                                                    ),
                                                    SizedBox(height: 5,),
                                                    InkWell(
                                                      onTap: (){
                                                        Navigator.pushNamed(context, TransactionSucessful.routeName);
                                                      },
                                                      child: const Row(
                                                        mainAxisSize: MainAxisSize.min,
                                                        mainAxisAlignment: MainAxisAlignment.start,
                                                        children: [
                                                          Icon(Icons.keyboard_arrow_right_outlined,color: Colors.blue,),
                                                          Text('Verified',style: TextStyle(fontWeight: FontWeight.bold,color: Colors.blue,),),
                                                        ],
                                                      ),
                                                    ),
                                                    SizedBox(height: 5,),
                                                    InkWell(
                                                      onTap: (){
                                                        Navigator.pushNamed(context, SaudiaPages.routeName);
                                                      },
                                                      child: const Row(
                                                        mainAxisSize: MainAxisSize.min,
                                                        mainAxisAlignment: MainAxisAlignment.start,
                                                        children: [
                                                          Icon(Icons.keyboard_arrow_right_outlined,color: Colors.blue,),
                                                          Text('Testimonials',style: TextStyle(fontWeight: FontWeight.bold,color: Colors.blue,),),
                                                        ],
                                                      ),
                                                    ),
                                                    SizedBox(height: 5,),
                                                    const Row(
                                                      mainAxisSize: MainAxisSize.min,
                                                      mainAxisAlignment: MainAxisAlignment.start,
                                                      children: [
                                                        Icon(Icons.keyboard_arrow_right_outlined,color: Colors.blue,),
                                                        Text('Logout',style: TextStyle(fontWeight: FontWeight.bold,color: Colors.blue,),),
                                                      ],
                                                    ),
                                                    SizedBox(height: 5,),
                                                  ],
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),

                                      ],
                                    ),
                                  )
                                ],
                              ),
                            );
                          }
                      );
                    },
                    child: Padding(
                      padding: const EdgeInsets.only(right: 8.0, bottom: 8),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          SvgPicture.asset(
                            'svg/user.svg',
                            fit: BoxFit.cover,
                          ),
                          SizedBox(
                            height: 3,
                          ),
                          Text(
                            '1682832598',
                            style:
                                TextStyle(color: Color(0xff061596), fontSize: 8),
                          ),
                          SizedBox(
                            height: 5,
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
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
