import 'package:flutter/material.dart';

import '../../utils/constants.dart';
import '../../utils/my_appbar.dart';

class EditBankWithdrawDetails extends StatefulWidget {
  const EditBankWithdrawDetails({Key? key}) : super(key: key);
  static const String routeName='/edit_bank_withdraw_dts';

  @override
  State<EditBankWithdrawDetails> createState() => _EditBankWithdrawDetailsState();
}

class _EditBankWithdrawDetailsState extends State<EditBankWithdrawDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: myAppbar(context),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        tooltip: 'Add new Contact',
        child: Icon(Icons.add),
      ),
      bottomNavigationBar: BottomAppBar(
        elevation: 10,
        notchMargin: 5,
        shape: CircularNotchedRectangle(),
        clipBehavior: Clip.antiAlias,
        child: BottomNavigationBar(
          selectedItemColor: Colors.blue,
          backgroundColor: Colors.white,
          onTap: (value) {
            if (value == 0) {
              //  Navigator.pushNamed(context, DealershipPage.routeName);
            }
            ;
            if (value == 1) {
              // Navigator.pushNamed(context, NationalTicketPrize.routeName);
            }
            ;
          },
          items: [
            BottomNavigationBarItem(
                icon: Image.asset(
                  "images/Home.png",
                  height: 30,
                ),
                label: 'Home'),
            BottomNavigationBarItem(
                label: 'Support',
                icon: Image.asset(
                  "images/Support.png",
                  height: 30,
                )),
          ],
        ),
      ),
      drawer: Drawer(),
      body: ListView(
        children:  [
          SizedBox(height: 20,),
          Text('Edit Bank Withdraw Details',style: TextStyle(fontSize: 22,color: Color(0xff03273C),fontWeight: FontWeight.w600),textAlign: TextAlign.center,),
          SizedBox(height: 30,),
          Text(
            'Bank Account:',
            textAlign: TextAlign.start,
            style: TextStyle(color: Colors.grey),
          ),
          SizedBox(
            height: 5,
          ),
          TextFormField(
            decoration: InputDecoration(
                labelText: '  Enter Bank Account',
                enabledBorder:OutlineInputBorder(
                  borderSide: const BorderSide(color: Color(0xff043655), width: 1.0),
                ),
                labelStyle: TextStyle(color: Colors.grey),
                isDense: true,
                contentPadding:
                EdgeInsets.symmetric(horizontal: 0, vertical: 0),
                prefixIcon: Container(

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
                    width: 20.0,
                    height: 20,
                    child: Icon(Icons.edit_calendar,color: darkBlue,size: 22,)
                ),
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(5),
                    borderSide: BorderSide(
                        color: Color(0xff043655),
                        width: 5
                    )
                )),
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            'Account Name:',
            textAlign: TextAlign.start,
            style: TextStyle(color: Colors.grey),
          ),
          SizedBox(
            height: 5,
          ),
          TextFormField(
            decoration: InputDecoration(
                labelText: '  Enter Account Name',
                enabledBorder:OutlineInputBorder(
                  borderSide: const BorderSide(color: Color(0xff043655), width: 1.0),
                ),
                labelStyle: TextStyle(color: Colors.grey),
                isDense: true,
                contentPadding:
                EdgeInsets.symmetric(horizontal: 0, vertical: 0),
                prefixIcon: Container(

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
                  width: 20.0,
                  height: 20,
                  child: IconButton(
                      padding: new EdgeInsets.only(right: 0.0),
                      onPressed: (){
                        Navigator.pop(context);
                      }, icon: Icon(Icons.person,color: Color(0xff043655),size: 25,)),
                ),
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(5),
                    borderSide: BorderSide(
                        color: Color(0xff043655),
                        width: 5
                    )
                )),
          ),
          SizedBox(
            height: 10,
          ),


          Text(
            'Bank Name:',
            textAlign: TextAlign.start,
            style: TextStyle(color: Colors.grey),
          ),
          SizedBox(
            height: 5,
          ),
          TextFormField(
            decoration: InputDecoration(

                labelText: '  Enter Bank Name',
                labelStyle: TextStyle(color: Colors.grey),
                enabledBorder:OutlineInputBorder(
                  borderSide: const BorderSide(color: Color(0xff043655), width: 1.0),
                ),
                isDense: true,
                contentPadding:
                EdgeInsets.symmetric(horizontal: 0, vertical: 0),
                prefixIcon: Container(
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
                    width: 20.0,
                    height: 20,
                    child: Icon(Icons.home,color: darkBlue,size: 25,)
                ),
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(5),
                    borderSide: BorderSide(
                        color: Color(0xff043655),
                        width: 5
                    )
                )),
          ),

          SizedBox(
            height: 10,
          ),
          Text(
            'Bank Branch:',
            textAlign: TextAlign.start,
            style: TextStyle(color: Colors.grey),
          ),
          SizedBox(
            height: 5,
          ),
          TextFormField(
            decoration: InputDecoration(

                labelText: '  Enter Bank Branch',
                labelStyle: TextStyle(color: Colors.grey),
                enabledBorder:OutlineInputBorder(
                  borderSide: const BorderSide(color: Color(0xff043655), width: 1.0),
                ),
                isDense: true,
                contentPadding:
                EdgeInsets.symmetric(horizontal: 0, vertical: 0),
                prefixIcon: Container(
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
                    width: 20.0,
                    height: 20,
                    child: Icon(Icons.home,color: darkBlue,size: 25,)
                ),
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(5),
                    borderSide: BorderSide(
                        color: Color(0xff043655),
                        width: 5
                    )
                )),
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            'Bank Country:',
            textAlign: TextAlign.start,
            style: TextStyle(color: Colors.grey),
          ),
          SizedBox(
            height: 5,
          ),
          TextFormField(
            decoration: InputDecoration(

                labelText: '  Enter Bank Country',
                labelStyle: TextStyle(color: Colors.grey),
                enabledBorder:OutlineInputBorder(
                  borderSide: const BorderSide(color: Color(0xff043655), width: 1.0),
                ),
                isDense: true,
                contentPadding:
                EdgeInsets.symmetric(horizontal: 0, vertical: 0),
                prefixIcon: Container(
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
                    width: 20.0,
                    height: 20,
                    child: Icon(Icons.home,color: darkBlue,size: 25,)
                ),
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(5),
                    borderSide: BorderSide(
                        color: Color(0xff043655),
                        width: 5
                    )
                )),
          ),
          const SizedBox(
            height: 10,
          ),
          Text(
            'Swift Code:',
            textAlign: TextAlign.start,
            style: TextStyle(color: Colors.grey),
          ),
          SizedBox(
            height: 5,
          ),
          TextFormField(
            decoration: InputDecoration(

                labelText: '  Enter Swift Code:',
                labelStyle: TextStyle(color: Colors.grey),
                enabledBorder:OutlineInputBorder(
                  borderSide: const BorderSide(color: Color(0xff043655), width: 1.0),
                ),
                isDense: true,
                contentPadding:
                EdgeInsets.symmetric(horizontal: 0, vertical: 0),
                prefixIcon: Container(
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
                    width: 20.0,
                    height: 20,
                    child: Icon(Icons.home,color: darkBlue,size: 25,)
                ),
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(5),
                    borderSide: BorderSide(
                        color: Color(0xff043655),
                        width: 5
                    )
                )),
          ),
        ],
      ),
    );
  }
}
