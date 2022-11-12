import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../utils/constants.dart';
import '../../utils/drawer.dart';
import '../../utils/my_appbar.dart';

class DepositForm extends StatefulWidget {
  const DepositForm({Key? key}) : super(key: key);
  static const String routeName='/deposit_form';

  @override
  State<DepositForm> createState() => _DepositFormState();
}

class _DepositFormState extends State<DepositForm> {
  var cities;
  var types;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: MyDrawer(),
      appBar: myAppbar(),

      body: ListView(
        children: [
          SizedBox(height: 14,),
          Padding(
            padding: const EdgeInsets.all(6.0),
            child: Container(
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
                    padding: const EdgeInsets.all(8.0),
                    child: Column(

                      mainAxisSize: MainAxisSize.min,
                      children: [
                        SizedBox(height: 30,),
                        Text('Deposit Form',style: TextStyle(color: Colors.blue,fontSize: 16,fontWeight: FontWeight.bold),),
                        SizedBox(height: 15,),
                        Container(
                          height: .5,
                          padding: EdgeInsets.only(left: 12,right: 12),
                          width: MediaQuery.of(context).size.width,
                          color: Colors.grey,),
                        

                        Padding(
                          padding: const EdgeInsets.all(12.0),
                          child: Form(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                SizedBox(
                                  height: 10,
                                ),
                                Text(
                                  'Enter Amount',
                                  textAlign: TextAlign.start,
                                  style: TextStyle(color: Colors.grey),
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                TextFormField(
                                  decoration: InputDecoration(
                                      labelText: '  Amount',
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
                                        child: SvgPicture.asset('svg/wallet.svg',height: 20,)
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
                                  'Perfectmoney',
                                  textAlign: TextAlign.start,
                                  style: TextStyle(color: Colors.grey),
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                DropdownButtonFormField(
                                  isDense: true,
                                  validator: (value) {
                                    if (value == null) {
                                      return 'Select a City';
                                    } else {
                                      return null;
                                    }
                                  },
                                  decoration:  InputDecoration(
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
                                      padding: new EdgeInsets.only(left: 12.0,right: 12),
                                      width: 20.0,
                                      height: 20,
                                      child: SvgPicture.asset('svg/method.svg',height: 20,width: 25,),
                                    ),
                                      contentPadding:EdgeInsets.symmetric(horizontal: 10),
                                    border: OutlineInputBorder(
                                        borderSide: BorderSide(
                                            color: Color(0xff043655),
                                          width: 1
                                        ),
                                        borderRadius: BorderRadius.all(Radius.circular(5))),
                                  ),
                                  hint: Text('  Select Payment Method'),
                                  value: cities,
                                  onChanged: (value) {
                                    setState(() {
                                      cities = value;
                                    });
                                  },
                                  items: cityName
                                      .map((e) => DropdownMenuItem(
                                    child: SizedBox(child: new Text(e)),
                                    value: e,
                                  ))
                                      .toList(),
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Text(
                                  'Pay ID/Account:',
                                  textAlign: TextAlign.start,
                                  style: TextStyle(color: Colors.grey),
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                TextFormField(
                                  decoration: InputDecoration(
                                      labelText: '  627323283',
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
                                  'Order ID/Transaction ID:',
                                  textAlign: TextAlign.start,
                                  style: TextStyle(color: Colors.grey),
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                TextFormField(
                                  decoration: InputDecoration(

                                      labelText: '  Order ID/Transaction ID:',
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
                                        child: SvgPicture.asset('svg/trx.svg',height: 20,)
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

                                Container(
                                    width: MediaQuery.of(context).size.width,
                                    child: ElevatedButton(
                                        style: ElevatedButton.styleFrom(
                                            backgroundColor: Color((0xffFFD504))),
                                        onPressed: () {
                                          TransactionSucess(context);
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
                        ),

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
          ),
        ],
      ),
    );
  }

  void TransactionSucess(BuildContext context) {
    showDialog(
        context: context,
        builder: (context) => AlertDialog(
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Image.asset('images/successful.png'),
              SizedBox(height: 20,),
              Text('Transaction Sucessful!',style: TextStyle(color: Colors.blue,fontSize: 16),),
              SizedBox(height: 20,),
              Text('Your transfer request of \$5 '),
              FittedBox(child: const Text('to account 012132323 was sucessful')),
              SizedBox(height: 10,),
              Container(
                  width: MediaQuery.of(context).size.width,
                  child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Color((0xff00A9FF))),
                      onPressed: () {
                      },
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [

                          Text('Make another transaction',style: TextStyle(color: Colors.white),),
                        ],
                      )))
            ],
          ),
        ),);
  }
}
