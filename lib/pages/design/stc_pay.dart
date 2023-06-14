import 'package:flutter/material.dart';
import 'package:glo_ticket/utils/my_appbar.dart';

import '../../utils/constants.dart';

class StcPay extends StatelessWidget {
  const StcPay({super.key});

  @override
  Widget build(BuildContext context) {
    return  SafeArea(
      child: Center(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Card(
            child: ListView(
              shrinkWrap: true,
              padding: EdgeInsets.symmetric(vertical: 20,horizontal: 10),
              children: [

                Stack(
                  alignment: Alignment.center,
                  children: [
                    Align(
                      alignment: Alignment.topLeft,
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(top: 12.0),
                            child: Text('Withdraw With STC Pay',style: TextStyle(color: dark,fontSize: 16),),
                          ),
                          SizedBox(height: 10,),
                          Divider(),
                        ],
                      ),
                    ),
                    Divider(),
                    const Positioned(
                        right: 0,
                        top: 0,
                        child: Icon(Icons.close)),
                  ],
                ),
                const SizedBox(height: 20,),
                Image.asset('images/tick.png',height: 70,width: 70,),
                SizedBox(height: 15,),
                Text('Withdraw process may take 1 hour to 72 hours',style: TextStyle(fontSize: 14,),textAlign: TextAlign.center,),
                SizedBox(height: 14,),
                Divider(),
                Align(
                  alignment: Alignment.center,
                    child: Text('Withdrawal Rate :',style: TextStyle(color: mainColor,fontSize: 16),)),
                SizedBox(height: 10,),

                Container(
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    color: Color(0xffF1F1F2),
                    borderRadius: BorderRadius.circular(6),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text('** STC Pay (1USD = 3.64 SAR) **',style: TextStyle(color: Colors.red),),
                  ),
                ),
                SizedBox(height: 16,),
                Text(
                  'Account',
                  textAlign: TextAlign.start,
                  style: TextStyle(color: dark),
                ),
                SizedBox(
                  height: 5,
                ),
                TextFormField(
                  decoration: InputDecoration(
                      labelText: '  Enter Pay Id or Account',
                      enabledBorder:OutlineInputBorder(
                        borderSide: const BorderSide(color: Color(0xff043655), width: .5),
                      ),
                      labelStyle: TextStyle(color: Colors.grey),
                      isDense: true,
                      contentPadding:
                      EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5),
                          borderSide: BorderSide(
                              color: Color(0xff043655),
                              width: 5
                          )
                      )),
                ),
                SizedBox(height: 10,),
                Text(
                  'Amount',
                  textAlign: TextAlign.start,
                  style: TextStyle(color: dark),
                ),
                SizedBox(
                  height: 5,
                ),
                TextFormField(
                  decoration: InputDecoration(
                      labelText: '  Enter Amount',
                      enabledBorder:OutlineInputBorder(
                        borderSide: const BorderSide(color: Color(0xff043655), width: .5),
                      ),
                      labelStyle: TextStyle(color: Colors.grey),
                      isDense: true,
                      contentPadding:
                      EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5),
                          borderSide: BorderSide(
                              color: Color(0xff043655),
                              width: 5
                          )
                      )),
                ),
                SizedBox(height: 10,),
                Text(
                  'Your Pin',
                  textAlign: TextAlign.start,
                  style: TextStyle(color: dark),
                ),
                SizedBox(
                  height: 5,
                ),
                TextFormField(
                  decoration: InputDecoration(
                      labelText: '  Enter pin',
                      enabledBorder:OutlineInputBorder(
                        borderSide: const BorderSide(color: Color(0xff043655), width: .5),
                      ),
                      labelStyle: TextStyle(color: Colors.grey),
                      isDense: true,
                      contentPadding:
                      EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5),
                          borderSide: BorderSide(
                              color: Color(0xff043655),
                              width: 5
                          )
                      )),
                ),
                SizedBox(height: 20,),
                Align(
                    alignment: Alignment.topRight,
                    child: ElevatedButton(onPressed: (){}, child: Text('Submit')))

              ],
            ),
          ),
        ),
      ),
    );
  }
}
