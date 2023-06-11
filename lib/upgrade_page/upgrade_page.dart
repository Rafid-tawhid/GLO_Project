import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../utils/constants.dart';
import '../utils/my_appbar.dart';

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
      appBar: myAppbar(context),
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
                              height: 32,
                              child: DropdownButtonFormField(

                                hint: Text('Select Country',style: TextStyle(fontSize: 8),),
                                decoration: InputDecoration(
                                  isDense: true,
                                  fillColor: Colors.white,
                                  filled: true,
                                  contentPadding: EdgeInsets.fromLTRB(5, 5, 2, 5),
                                  border: OutlineInputBorder(
                                      borderSide: BorderSide(color: Color(0xff000054)),
                                      borderRadius:
                                      BorderRadius.all(Radius.circular(5))),
                                ),
                                items: [
                                  DropdownMenuItem(
                                      child: Text('Select Country'))
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
                            InkWell(
                              onTap: (){

                              },
                              child: Container(
                                width: 95,
                                height: 35,
                                alignment: Alignment.center,
                                child: Text('Cancel',
                                  style: TextStyle(color: Colors.white,fontSize: 15),),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(8),
                                  image: DecorationImage(
                                      image:AssetImage("images/cancel_btn_bg.png"),
                                      fit:BoxFit.cover
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(width: 8,),
                            InkWell(
                              onTap: (){

                              },
                              child: Container(
                                width: 150,
                                height: 35,
                                alignment: Alignment.center,
                                child: Text('Confirm Upgrade',
                                  style: TextStyle(color: Colors.black,fontSize: 15),),
                                 decoration: BoxDecoration(
                                   borderRadius: BorderRadius.circular(8),
                                  image: DecorationImage(
                                      image:AssetImage("images/confirm_btn_bg.png"),
                                      fit:BoxFit.cover
                                  ),
                              ),
                              ),
                            )
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
              padding: const EdgeInsets.all(10.0),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(6),
                 border: Border.all(
                      width: 1.0,
                      color: Colors.grey,
                      style: BorderStyle.solid
                  ),
                ),
                  child: Icon(Icons.close_rounded,color: Colors.grey,size: 22,)),
            ),)
        ],
      ),
    );
  }
}
