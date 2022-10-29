import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../utils/constants.dart';

class UpgradePage extends StatefulWidget {
  static const String routeName='/upgrade_page';

  @override
  State<UpgradePage> createState() => _UpgradePageState();
}

class _UpgradePageState extends State<UpgradePage> {
  bool confirmUpgrade=true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          elevation: 0,
          toolbarHeight: 70.0,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(10),
              bottomRight: Radius.circular(10),
            ),
          ),
          centerTitle: true,
          leading: IconButton(
            icon: Icon(Icons.menu, color: Colors.grey, size: 30),
            onPressed: () {},
          ),
          actions: [
            Container(
              padding: EdgeInsets.only(right: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  IconButton(
                    icon: CircleAvatar(
                      backgroundColor: Color(0xff8E8E93),
                      child: Image.asset(
                        'images/profile.png',
                        fit: BoxFit.cover,
                      ),
                    ),
                    onPressed: () {},
                  ),
                  Text(
                    '01682832598',
                    style: TextStyle(fontSize: 7,color: Colors.blueGrey)
                  ),
                ],
              ),
            ),
          ],
          backgroundColor: lightBgPrimaryColor,
          title: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Container(
                  padding: EdgeInsets.only(left: 2),
                  margin: EdgeInsets.only(bottom: 8, right: 10),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: lightBgSecondaryColor,
                  ),
                  width: 70,
                  height: 12,
                  child: Stack(
                    clipBehavior: Clip.none,
                    children: [
                      Row(
                        children: [
                          SizedBox(width: 20,),
                          Padding(
                            padding: const EdgeInsets.only(top: 2.0),
                            child: Text(
                              '\$ 10000',
                              style: myStyle(
                                  7, lightBgPrimaryColor, FontWeight.w700),
                            ),
                          ),
                        ],
                      ),
                      Positioned(
                        right: -5,
                        top: -2,
                        child: Image.asset('images/i.png',
                            height: 15),
                      ),
                    ],
                  )),
              Image.asset(
                'images/glo.png',
                height: 50,
                fit: BoxFit.contain,
              ),
              Container(
                alignment: Alignment.center,
                  padding: EdgeInsets.only(left: 2),
                  margin: EdgeInsets.only(bottom: 8, left: 7),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: lightBgSecondaryColor,
                  ),
                  width: 70,
                  height: 12,
                  child: Stack(
                    clipBehavior: Clip.none,
                    children: [
                      Row(
                        children: [
                          SizedBox(width: 20,),
                          Padding(
                            padding: const EdgeInsets.only(top: 2.0),
                            child: Text(
                              '\$ 10000',
                              style: myStyle(
                                  7, lightBgPrimaryColor, FontWeight.w700),
                            ),
                          ),
                        ],
                      ),
                      Positioned(
                        left: -5,
                        top: -2,
                        child: Image.asset('images/c.png',
                            height: 15),
                      ),
                    ],
                  )),
            ],
          )),
      body: Column(
        children: [
          SizedBox(height: 30,),
          confirmUpgrade?officialDealershipAccount(context):officialPersonalAccount(context)
        ],
      ),
    );
  }

  Padding officialPersonalAccount(BuildContext context) {
    return Padding(
          padding: const EdgeInsets.all(4.0),
          child: Stack(
            children: [
              Card(
                elevation: 10,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10)
                ),
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                      color: Color(0xffE5F3FC),
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(
                      color: Color(0xff0A8FE6),
                      width: 1.5
                    )
                  ),
                  child: Column(
                    children: [
                      Image.asset("images/all_logo.png"),
                      SizedBox(height: 10,),
                      Text('Official Personal Account',style: TextStyle(fontSize: 24,color: Colors.lightBlue),),
                      SizedBox(height: 5,),
                      Text('(Yearly)'),
                      SizedBox(height: 8,),
                      Container(
                        height: 1.5,
                        color: Colors.lightBlue.shade400,
                        width: MediaQuery.of(context).size.width/2,
                      ),
                      SizedBox(height: 5,),
                      Text('Deposit \$3',style: TextStyle(fontSize: 24,color: Colors.lightBlue),),
                      SizedBox(height: 8,),
                      Container(
                        height: 1.5,
                        color: Colors.lightBlue.shade400,
                        width: MediaQuery.of(context).size.width/1.2,
                      ),
                      Padding(
                        padding: const EdgeInsets.all(18.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children:[
                            TextButton(
                                onPressed: (){},
                              style: TextButton.styleFrom(
                                backgroundColor:Color(0xff061596)
                              ),
                                child: Text('Cancel',style: TextStyle(color: Colors.white),),
                            ),
                            SizedBox(width: 8,),
                            TextButton(
                              onPressed: (){
                                confirmUpgrade!=confirmUpgrade;
                              },
                              style: TextButton.styleFrom(
                                  backgroundColor:lightBgPrimaryColor
                              ),
                              child: Text('Confirm Upgrade',style: TextStyle(color: Colors.blueGrey),),
                            ),

                          ]
                        ),
                      ),
                      SizedBox(height: 15,)

                    ],
                  )
                ),
              ),
              Positioned(
                right: 0,
                child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Icon(Icons.close_rounded),
              ),)
            ],
          ),
        );
  }

  Padding officialBusinessAccount(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(4.0),
      child: Stack(
        children: [
          Card(
            elevation: 10,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10)
            ),
            child: Container(
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                    color: Color(0xffF0E5F7),
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(
                        color: Color(0xff770ABC),
                        width: 1.5
                    )
                ),
                child: Column(
                  children: [
                    Image.asset("images/all_logo.png"),
                    SizedBox(height: 10,),
                    Text('Official Bussiness Account',style: TextStyle(fontSize: 24,color: Color(0xff770ABC)),),
                    SizedBox(height: 5,),
                    Text('(Yearly)'),
                    SizedBox(height: 8,),
                    Container(
                      height: 1.5,
                      color: Color(0xff770ABC),
                      width: MediaQuery.of(context).size.width/2,
                    ),
                    SizedBox(height: 5,),
                    Text('Deposit \$499',style: TextStyle(fontSize: 24,color: Colors.lightBlue),),
                    SizedBox(height: 8,),
                    Container(
                      height: 1.5,
                      color: Color(0xff770ABC),
                      width: MediaQuery.of(context).size.width/1.2,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(18.0),
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children:[
                            TextButton(
                              onPressed: (){},
                              style: TextButton.styleFrom(
                                  backgroundColor:Color(0xff061596)
                              ),
                              child: Text('Cancel',style: TextStyle(color: Colors.white),),
                            ),
                            SizedBox(width: 8,),
                            TextButton(
                              onPressed: (){
                                setState(() {
                                  confirmUpgrade!=confirmUpgrade;
                                });
                              },
                              style: TextButton.styleFrom(
                                  backgroundColor:lightBgPrimaryColor
                              ),
                              child: Text('Confirm Upgrade',style: TextStyle(color: Colors.blueGrey),),
                            ),

                          ]
                      ),
                    ),
                    SizedBox(height: 15,)

                  ],
                )
            ),
          ),
          Positioned(
            right: 0,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Icon(Icons.close_rounded),
            ),)
        ],
      ),
    );
  }

  Padding officialDealershipAccount(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(4.0),
      child: Stack(
        children: [
          Card(
            elevation: 10,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10)
            ),
            child: Container(
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                    color: Color(0xffFEF5E5),
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(
                        color: Color(0xffFAA60C),
                        width: 1.5
                    )
                ),
                child: Column(
                  children: [
                    Image.asset("images/all_logo.png"),
                    SizedBox(height: 10,),
                    Text('Official Dealership Account',style: TextStyle(fontSize: 24,color: Color(0xff770ABC)),),
                    SizedBox(height: 5,),
                    Text('(Yearly)'),
                    SizedBox(height: 8,),
                    Container(
                      height: 1.5,
                      color: Color(0xff770ABC),
                      width: MediaQuery.of(context).size.width/2,
                    ),
                    SizedBox(height: 5,),
                    Text('Deposit \$1299',style: TextStyle(fontSize: 24,color: Colors.lightBlue),),
                    SizedBox(height: 8,),
                    Container(
                      height: 1.5,
                      color: Color(0xff770ABC),
                      width: MediaQuery.of(context).size.width/1.2,
                    ),
                    SizedBox(height: 30,),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Expanded(child: Text('Full Name:',style: TextStyle(fontSize: 16),)),
                          Expanded(
                            child: SizedBox(
                              height: 28,
                              child: TextField(

                                decoration: InputDecoration(
                                    filled: true,
                                    fillColor: Colors.white,
                                    isDense: true,
                                    contentPadding: EdgeInsets.symmetric(horizontal:16, vertical: 16),
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(5),
                                    borderSide: BorderSide(
                                      width: 1,
                                      color: Colors.blueGrey
                                    )
                                  )
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Expanded(child: Text('Dealers Country:',style: TextStyle(fontSize: 16),)),
                          Expanded(
                            child: SizedBox(
                              height: 28,
                              width: double.infinity,
                              child: DropdownButtonFormField(
                                isDense: false,

                                decoration: InputDecoration(
                                  border: OutlineInputBorder(
                                      borderSide: BorderSide(color: Color(0xff000054)),
                                      borderRadius:
                                      BorderRadius.all(Radius.circular(5))),
                                ),
                                items: [
                                  DropdownMenuItem(child: Text('Select Country      '))
                                ], onChanged: (value) {  },
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Expanded(child: Text('Telegram Username:',style: TextStyle(fontSize: 16),)),
                          Expanded(
                            child: SizedBox(
                              height: 28,
                              child: TextField(

                                decoration: InputDecoration(
                                    filled: true,
                                    fillColor: Colors.white,
                                    isDense: true,
                                    contentPadding: EdgeInsets.symmetric(horizontal:16, vertical: 16),
                                    border: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(5),
                                        borderSide: BorderSide(
                                            width: 1,
                                            color: Colors.blueGrey
                                        )
                                    )
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                    SizedBox(height: 15,),
                    Padding(
                      padding: const EdgeInsets.all(18.0),
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children:[
                            TextButton(
                              onPressed: (){},
                              style: TextButton.styleFrom(
                                  backgroundColor:Color(0xff061596)
                              ),
                              child: Text('Cancel',style: TextStyle(color: Colors.white),),
                            ),
                            SizedBox(width: 8,),
                            TextButton(
                              onPressed: (){
                                setState(() {
                                  confirmUpgrade!=confirmUpgrade;
                                });
                              },
                              style: TextButton.styleFrom(
                                  backgroundColor:lightBgPrimaryColor
                              ),
                              child: Text('Confirm Upgrade',style: TextStyle(color: Colors.blueGrey),),
                            ),

                          ]
                      ),
                    ),
                    SizedBox(height: 15,)

                  ],
                )
            ),
          ),
          Positioned(
            right: 0,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Icon(Icons.close_rounded),
            ),)
        ],
      ),
    );
  }
}
