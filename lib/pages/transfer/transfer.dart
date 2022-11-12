import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:glo_project/pages/transfer/transfer_form.dart';

import '../../utils/drawer.dart';
import '../../utils/my_appbar.dart';

class TransferPage extends StatefulWidget {
  static const String routeName='/transfer';

  @override
  State<TransferPage> createState() => _TransferPageState();
}

class _TransferPageState extends State<TransferPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: MyDrawer(),
      appBar: myAppbar(),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.all(8),
            child: Container(
              height: MediaQuery.of(context).size.height/7,
              child: Container(
                decoration: BoxDecoration(
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                          color: Color(0xffFFD504),
                          spreadRadius: -1.0,
                          blurRadius: 1.0,
                          offset: Offset(0, 4,)
                      )
                    ],
                    borderRadius: BorderRadius.circular(8)
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Expanded(
                      child: InkWell(
                        onTap:(){
                          showDialog(
                            context: context,
                            builder: (context) {
                              return ConvertWalletToWallet('Convert C Wallet to I Wallet','svg/cup_icon.svg');
                            },);
                        },
                        child: Padding(
                          padding: const EdgeInsets.all(18.0),
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              SvgPicture.asset('svg/cup.svg',height: 35,),
                              SizedBox(height: 5,),
                              Text('C2I Wallet',style: TextStyle(fontSize: 14,color: Color(0xff043655)),)
                            ],
                          ),
                        ),
                      ),
                    ),
                    Container(
                      width: 1,
                      margin: EdgeInsets.only(top: 10,bottom: 10),
                      color: Colors.grey.shade200,
                      height: MediaQuery.of(context).size.height/7,
                    ),
                    Expanded(
                      child: InkWell(
                          onTap:(){
                            showDialog(
                              context: context,
                              builder: (context) {
                                return AlertDialog(
                                  contentPadding: EdgeInsets.zero,
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.all(Radius.circular(10.0))
                                  ),
                                  content: Container(
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(10),
                                        border: Border.all(
                                            color: Colors.grey,
                                            width: 1
                                        )
                                    ),
                                    child: Column(

                                      mainAxisSize: MainAxisSize.min,
                                      children: [
                                        Image.asset('images/transfer_bg.png',fit: BoxFit.cover,),
                                        SizedBox(height: 30,),
                                        Text('For I wallet transfer, you have to upgrade your account',style: TextStyle(color: Colors.blue,fontWeight: FontWeight.bold,),textAlign: TextAlign.center,),
                                        SizedBox(height: 30,),
                                        Container(
                                          width: MediaQuery.of(context).size.width,
                                          margin: EdgeInsets.only(left: 10,right: 10),
                                          color: Colors.grey.shade200,
                                          height: 2,
                                        ),
                                        SizedBox(height: 20,),
                                        Padding(
                                          padding: const EdgeInsets.all(5.0),
                                          child: Container(

                                            child: Row(
                                              mainAxisAlignment: MainAxisAlignment.center,
                                              children: [
                                                Padding(
                                                  padding: const EdgeInsets.all(5.0),
                                                  child: SvgPicture.asset('svg/cancel_btn.svg',height: 35,fit: BoxFit.fitHeight,),
                                                ),
                                                Expanded(
                                                  child: InkWell(
                                                    onTap: (){
                                                      Navigator.pushNamed(context, TransferForm.routeName);
                                                    },
                                                    child: Padding(
                                                      padding: const EdgeInsets.all(5.0),
                                                      child: SvgPicture.asset('svg/upgrade_btn.svg',height: 35,fit: BoxFit.fitWidth,),
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                );

                              },);
                        },
                        child: Padding(
                          padding: const EdgeInsets.all(18.0),
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              SvgPicture.asset('svg/transfer.svg',height: 35,),
                              SizedBox(height: 5,),
                              Text('Transfer',style: TextStyle(fontSize: 14,color: Color(0xff043655)),)
                            ],
                          ),
                        ),
                      ),
                    ),
                    Container(
                      width: 1,
                      margin: EdgeInsets.only(top: 10,bottom: 10),
                      color: Colors.grey.shade200,
                      height: MediaQuery.of(context).size.height/7,
                    ),
                    Expanded(
                      child: InkWell(
                        onTap:(){
                          showDialog(
                            context: context,
                            builder: (context) {
                              return ConvertWalletToWallet('Convert I Wallet to C Wallet','svg/charge.svg');
                            },);
                        },
                        child: Padding(
                          padding: const EdgeInsets.all(18.0),
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Container(
                                width: 45,
                                  child: SvgPicture.asset('svg/wallets.svg',height: 35,width: 40,)),
                              SizedBox(height: 5,),
                              Text('I2C Wallet',style: TextStyle(fontSize: 14,color: Color(0xff043655)),)
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),

          Container(
            alignment: Alignment.center,
            margin: EdgeInsets.all(8),
            padding: EdgeInsets.only(top: 10,bottom: 10),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(6)),
                border: Border.all(
                    color: Color(0xff043655),
                    width: 1
                )
            ),
            child: Text('Transfer history',style: TextStyle(fontWeight: FontWeight.bold),),
          ),

          Padding(
            padding: const EdgeInsets.only(left: 8.0,right: 8),
            child: Card(
              elevation: 2,
              shadowColor: Colors.yellow,
              child: Container(
                padding: EdgeInsets.only(top: 10,bottom: 10),
                decoration: BoxDecoration(
                    color: Color(0xffE8EDF6),
                    borderRadius: BorderRadius.all(Radius.circular(6)),
                    boxShadow: [
                      BoxShadow(
                          color: Color(0xffFFD504),
                          spreadRadius: -1.0,
                          blurRadius: 1.0,
                          offset: Offset(0, 3,)
                      )
                    ]

                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 8.0,right: 8),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                mainAxisSize: MainAxisSize.min,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text('SI#3',style: TextStyle(fontSize: 14,color: Color(0xff043655)),),
                                  SizedBox(height: 5,),
                                  Row(
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      SvgPicture.asset('svg/calendar.svg'),
                                      SizedBox(width: 5,),
                                      Text('14-07-2022 03:03 PM',style: TextStyle(fontSize: 14,color: Color(0xff043655)),)
                                    ],
                                  )
                                ],
                              ),
                              ElevatedButton(

                                  style: ElevatedButton.styleFrom(
                                    backgroundColor: Color(0xffFFD504),
                                    minimumSize: Size.zero, // Set this
                                    padding: EdgeInsets.all(5),
                                  ),
                                  onPressed: (){}, child: Text('\$-100.00',style: TextStyle(color: Color(0xff043655)),))
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  SvgPicture.asset('svg/code.svg'),
                                  SizedBox(width: 5,),
                                  Text(' CODE NO:',style: TextStyle(fontSize: 14,color: Color(0xff043655)),)
                                ],
                              ),
                              Text('\#3084')
                            ],
                          ),

                          SizedBox(height: 5,),

                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  SvgPicture.asset('svg/user_id.svg'),
                                  SizedBox(width: 5,),
                                  Text('UserID:',style: TextStyle(fontSize: 14,color: Color(0xff043655)),)
                                ],
                              ),
                              Text('016813238')
                            ],
                          ),
                          SizedBox(height: 5,),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  SvgPicture.asset('svg/charge.svg'),
                                  SizedBox(width: 5,),
                                  Text('Charge:',style: TextStyle(fontSize: 14,color: Color(0xff043655)),)
                                ],
                              ),
                              Text('\$0.20')
                            ],
                          ),
                          SizedBox(height: 5,),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  SvgPicture.asset('svg/type.svg'),
                                  SizedBox(width: 5,),
                                  Text('Type:',style: TextStyle(fontSize: 14,color: Color(0xff043655)),)
                                ],
                              ),
                              Text('I Wallet to C Wallet')
                            ],
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 5,),
                    Padding(
                      padding: const EdgeInsets.only(left: 8.0,right: 8,top: 5),
                      child: Container(
                        decoration: BoxDecoration(
                            color: Colors.blue,
                            borderRadius: BorderRadius.circular(6)
                        ),
                        child:  Padding(
                          padding: const EdgeInsets.only(left: 12.0,right: 12,top: 6,bottom: 6),
                          child: Text('Sucessful',style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white),),
                        ),
                      ),
                    )

                  ],
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 8.0,right: 8),
            child: Card(
              elevation: 2,
              shadowColor: Colors.yellow,
              child: Container(
                padding: EdgeInsets.only(top: 10,bottom: 10),
                decoration: BoxDecoration(
                    color: Color(0xffE8EDF6),
                    borderRadius: BorderRadius.all(Radius.circular(6)),
                    boxShadow: [
                      BoxShadow(
                          color: Color(0xffFFD504),
                          spreadRadius: -1.0,
                          blurRadius: 1.0,
                          offset: Offset(0, 3,)
                      )
                    ]

                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 8.0,right: 8),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                mainAxisSize: MainAxisSize.min,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text('SI#3',style: TextStyle(fontSize: 14,color: Color(0xff043655)),),
                                  SizedBox(height: 5,),
                                  Row(
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      SvgPicture.asset('svg/calendar.svg'),
                                      SizedBox(width: 5,),
                                      Text('14-07-2022 03:03 PM',style: TextStyle(fontSize: 14,color: Color(0xff043655)),)
                                    ],
                                  )
                                ],
                              ),
                              ElevatedButton(

                                  style: ElevatedButton.styleFrom(
                                    backgroundColor: Color(0xffFFD504),
                                    minimumSize: Size.zero, // Set this
                                    padding: EdgeInsets.all(5),
                                  ),
                                  onPressed: (){}, child: Text('\$-100.00',style: TextStyle(color: Color(0xff043655)),))
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  SvgPicture.asset('svg/code.svg'),
                                  SizedBox(width: 5,),
                                  Text(' CODE NO:',style: TextStyle(fontSize: 14,color: Color(0xff043655)),)
                                ],
                              ),
                              Text('\#3084')
                            ],
                          ),

                          SizedBox(height: 5,),

                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  SvgPicture.asset('svg/user_id.svg'),
                                  SizedBox(width: 5,),
                                  Text('UserID:',style: TextStyle(fontSize: 14,color: Color(0xff043655)),)
                                ],
                              ),
                              Text('016813238')
                            ],
                          ),
                          SizedBox(height: 5,),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  SvgPicture.asset('svg/charge.svg'),
                                  SizedBox(width: 5,),
                                  Text('Charge:',style: TextStyle(fontSize: 14,color: Color(0xff043655)),)
                                ],
                              ),
                              Text('\$0.20')
                            ],
                          ),
                          SizedBox(height: 5,),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  SvgPicture.asset('svg/type.svg'),
                                  SizedBox(width: 5,),
                                  Text('Type:',style: TextStyle(fontSize: 14,color: Color(0xff043655)),)
                                ],
                              ),
                              Text('I Wallet to C Wallet')
                            ],
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 5,),
                    Padding(
                      padding: const EdgeInsets.only(left: 8.0,right: 8,top: 5),
                      child: Container(
                        decoration: BoxDecoration(
                            color: Colors.blue,
                            borderRadius: BorderRadius.circular(6)
                        ),
                        child:  Padding(
                          padding: const EdgeInsets.only(left: 12.0,right: 12,top: 6,bottom: 6),
                          child: Text('Sucessful',style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white),),
                        ),
                      ),
                    )

                  ],
                ),
              ),
            ),
          ),

        ],
      ),



      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        onPressed: (){

        },
        child: Icon(Icons.add),
        tooltip: 'Add new Contact',
      ),
      bottomNavigationBar: BottomAppBar(
        elevation: 10,
        notchMargin: 5,
        shape: CircularNotchedRectangle(),
        clipBehavior: Clip.antiAlias,
        child: BottomNavigationBar(
          selectedItemColor: Colors.blue,
          backgroundColor: Colors.white,
          onTap: (value){
            if(value==0){
            //  Navigator.pushNamed(context, DealershipPage.routeName);
            }
          },
          items: [
            BottomNavigationBarItem(

                icon: Image.asset("images/Home.png",height: 30,),
                label: 'Home'
            ),
            BottomNavigationBarItem(

                label: 'Support',
                icon: Image.asset("images/Support.png",height: 30,)),

          ],
        ),

      ),
    );
  }


}
class ConvertWalletToWallet extends StatelessWidget {
  String title;
  String icon;


  ConvertWalletToWallet(this.title, this.icon);

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      contentPadding: EdgeInsets.zero,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      content: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            border: Border.all(
                color: Colors.grey,
                width: 1
            )
        ),
        child: Stack(
          children: [
            Padding(
              padding: const EdgeInsets.all(28.0),
              child: Column(

                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(title,style: TextStyle(color: Colors.blue,fontSize: 16,fontWeight: FontWeight.bold),),
                  SizedBox(height: 10,),
                  Container(
                    height: 1,
                    padding: EdgeInsets.only(left: 12,right: 12),
                    width: MediaQuery.of(context).size.width,
                    color: Colors.grey,),
                  SizedBox(height: 40,),
                  Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(3.0),
                        child: Text('Amount:',style: TextStyle(fontSize: 14,color: Colors.grey),),
                      ),
                      Container(
                        height: 40,
                        child: TextFormField(
                          decoration: InputDecoration(

                              labelText: '  Enter amount',
                              labelStyle: TextStyle(color: Colors.grey),
                              enabledBorder:OutlineInputBorder(
                                borderSide: const BorderSide(color: Color(0xff043655), width: 1.0),
                              ),
                              isDense: true,
                              contentPadding:
                              EdgeInsets.symmetric(horizontal: 0, vertical: 0),
                              prefixIcon: Padding(
                                padding: const EdgeInsets.only(right: 10.0),
                                child: Container(
                                    width: 15.0,
                                    height: 15,
                                    decoration: BoxDecoration(
                                        color: Color(0xffE9ECEF),
                                        borderRadius: BorderRadius.circular(5),
                                        border: Border.all(
                                            width: 1,
                                            color: Color(0xff043655)
                                        )
                                    ),
                                    alignment: Alignment.center,
                                    padding: new EdgeInsets.all(0.0),
                                    child: Padding(
                                      padding: const EdgeInsets.all(6.0),
                                      child: SvgPicture.asset(icon,height: 18,width: 18,),
                                    )
                                ),
                              ),
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(5),
                                  borderSide: BorderSide(
                                      color: Color(0xff043655),
                                      width: 5
                                  )
                              ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(3.0),
                        child: Text('2% charge applicable',style: TextStyle(fontSize: 14,color: Colors.blue),),
                      ),
                    ],
                  ),
                  SizedBox(height: 20,),
                  Container(
                      width: MediaQuery.of(context).size.width,
                      child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              backgroundColor: Color((0xffFFD504))),
                          onPressed: () {
                          },
                          child: Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              SvgPicture.asset('svg/nike.svg',height: 15,width: 15,),
                              SizedBox(width: 5,),
                              Text('Submit',style: TextStyle(color: Color((0xff043655))),),
                            ],
                          )))

                ],
              ),
            ),
            Positioned(
              right: 0,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  decoration: BoxDecoration(
                    color: Color(0xff043655),
                    borderRadius: BorderRadius.circular(5),

                  ),
                  alignment: Alignment.center,
                  padding: new EdgeInsets.all(0.0),

                  width: 20.0,
                  height: 20,
                  child: IconButton(
                      padding: new EdgeInsets.all(0.0),
                      onPressed: (){
                        Navigator.pop(context);
                      }, icon: Icon(Icons.close,color: Colors.white,size: 18,)),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
