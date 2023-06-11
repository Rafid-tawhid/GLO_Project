import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:glo_ticket/pages/profile_popup_pages/profile_page.dart';
import 'package:glo_ticket/pages/ticket_info/national_ticket_prize.dart';
import 'package:glo_ticket/utils/drawer.dart';
import 'package:glo_ticket/utils/my_appbar.dart';

import '../dealership_page.dart';

class ExchangeRatePage extends StatefulWidget {
  const ExchangeRatePage({Key? key}) : super(key: key);
  static const String routeName='/rxchange_rate';

  @override
  State<ExchangeRatePage> createState() => _ExchangeRatePageState();
}

class _ExchangeRatePageState extends State<ExchangeRatePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: myAppbar(context),

      body: ListView(
        children: [
          SizedBox(height: 20,),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset('images/exchange.png',height: 30,width: 30,),
              SizedBox(width: 8,),
              const Text('Exchange Rate',style: TextStyle(fontSize: 20,color: Color(0xff032D46)),),
              SizedBox(width: 4,),
              Text('(For \$1.00)',style: TextStyle(color: Color(0xff0792E5)),)
            ],
          ),
          SizedBox(height: 10,),
           Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.0),
            child: Container(
              height: 34,
              child: TextField(
                decoration: InputDecoration(
                  contentPadding: EdgeInsets.symmetric(horizontal: 8),
                  hintText: 'Search By Country',
                  hintStyle: TextStyle(color: Colors.grey),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(6),
                    borderSide: const BorderSide(
                      color: Colors.red,
                      width: 3
                    )
                  ),
                  suffixIcon: Icon(Icons.search,size: 28,)
                ),

              ),
            ),
          ),
          SizedBox(height: 10,),

          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: SizedBox(
              height: MediaQuery.of(context).size.height/20,
              child: Row(
                children: [
                  Expanded(
                    flex: 2,
                      child: Container(
                    color: const Color(0xff0792E5),
                      alignment: Alignment.center,
                      child: const Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Text('Flag',style: TextStyle(color: Colors.white),),
                      ))),
                  Container(width: 1,color: Colors.white,),
                  Expanded(
                    flex: 3,
                      child: Container(
                      color: const Color(0xff0792E5),
                      alignment: Alignment.center,
                      child: const Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Text('Country',style: TextStyle(color: Colors.white),),
                      ))),
                  Container(width: 1,color: Colors.white,),
                  Expanded(
                    flex: 2,
                      child: Container(
                      color: const Color(0xff0792E5),
                      alignment: Alignment.center,
                      child: const Padding(
                        padding: EdgeInsets.symmetric(vertical: 8.0),
                        child: Text('Buy_Rate',style: TextStyle(color: Colors.white),),
                      ))),
                  Container(width: 1,color: Colors.white,),
                  Expanded(
                    flex: 3,
                      child: Container(
                      color: const Color(0xff0792E5),
                      alignment: Alignment.center,
                      child: const Padding(
                        padding: EdgeInsets.all(4.0),
                        child: Text('Withdraw\nRate',style: TextStyle(color: Colors.white,),textAlign:TextAlign.center,),
                      ))),



                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: ListView.builder(
              itemCount: 20,
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              itemBuilder: (context,index)=>Row(
                children: [
                  Expanded(
                      flex: 2,
                      child: Container(
                          color: index%2==0?const Color(0xff028edb40):Color(0xff67bcef),
                          alignment: Alignment.center,
                          child:  Padding(
                            padding: EdgeInsets.all(2.0),
                            child: SizedBox(height: 28,width: 50,child: Image.network('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRed-Pq1OduF7FpsO2mM7tqjAerpnBAcbwROLWjHIFueyFYkDXfRiGhcMAi8VPqFx9LOpw&usqp=CAU',fit: BoxFit.cover,),)
                          ))),
                  Container(width: 1,color: Colors.white,),
                  Expanded(
                      flex: 3,
                      child: Container(
                          color: index%2==0?const Color(0xff028EDB40):Color(0xff67bcef),
                          alignment: Alignment.center,
                          child: const Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Text('Afganistan',style: TextStyle(color: Color(0xff03273D)),),
                          ))),
                  Container(width: 1,color: Colors.white,),
                  Expanded(
                      flex: 2,
                      child: Container(
                          alignment: Alignment.center,
                          color: index%2==0?const Color(0xff028EDB40):Color(0xff67bcef),
                          child: const Padding(
                            padding: EdgeInsets.symmetric(vertical: 8.0),
                            child: Text('87.25',style: TextStyle(color: Color(0xff03273D)),),
                          ))),
                  Container(width: 1,color: Colors.white,),
                  Expanded(
                      flex: 3,
                      child: Container(
                          alignment: Alignment.center,
                          color: index%2==0?const Color(0xff028EDB40):Color(0xff67bcef),
                          child: const Padding(
                            padding: EdgeInsets.symmetric(vertical: 8.0),
                            child: Text('98.25',style: TextStyle(color: Color(0xff03273D)),textAlign:TextAlign.center,),
                          ))),



                ],
              ),
            ),
          )

        ],
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
              Navigator.pushNamed(context, DealershipPage.routeName);
            };
            if(value==1){
              Navigator.pushNamed(context, NationalTicketPrize.routeName);
            };
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
      drawer: const Drawer(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          Navigator.pushNamed(context, Profile_page.routeName);
        },
        child: Icon(Icons.add),
        tooltip: 'Add new Contact',
      ),
    );
  }
}
