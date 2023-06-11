import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:glo_ticket/pages/profile_popup_pages/exchange_rate.dart';

import '../../utils/constants.dart';
import '../../utils/my_appbar.dart';

class SaudiaPages extends StatefulWidget {
  const SaudiaPages({Key? key}) : super(key: key);
  static const String routeName='/soudia';

  @override
  State<SaudiaPages> createState() => _SaudiaPagesState();
}

class _SaudiaPagesState extends State<SaudiaPages> {
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
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0,vertical: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Expanded(flex: 3, child: ElevatedButton(onPressed: (){
                  Navigator.pushNamed(context, ExchangeRatePage.routeName);
                }, child: Text('See USD rate'))),
                Expanded(flex: 1, child: Text('')),
                Expanded(
                  flex: 3,
                  child: ElevatedButton(onPressed: (){}, child: const Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text('Select Country'),
                      Icon(Icons.keyboard_arrow_down_rounded)
                    ],
                  )),
                ),
              ],
            ),
          ),
          const DealerShipWidget(),
          const SizedBox(height: 10,),
          const DealerShipWidget(),
          const SizedBox(height: 10,),
          const DealerShipWidget(),
          const SizedBox(height: 10,),

        ],
      ),
    );
  }
}

class DealerShipWidget extends StatelessWidget {
  const DealerShipWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(

        decoration: BoxDecoration(
            color: Color(0xffFEF5E5),
            borderRadius: BorderRadius.circular(12),
            border: Border.all(color:Color(0xffFAA60C),width: 2 )
        ),
        child: Stack(
          children: [
            Positioned(right: 0, child: Image.asset('images/premium.png')),
            Column(
              children: [
                SizedBox(height: 15,),
                const Text('Saudi Arabia',style: TextStyle(fontSize: 28,color: Color(0xffFAA60C),fontWeight: FontWeight.w600),),
                SizedBox(height: 5,),
                 Container(
                  color: Color(0xffFAA60C),

                  height: 2,
                  width: MediaQuery.of(context).size.width/1.5,
                ),
                SizedBox(height: 10,),
                const Text('Official Depositor',style: TextStyle(fontSize: 18,color: Color(0xff03273C),fontWeight: FontWeight.w600),),
                SizedBox(height: 10,),
                ElevatedButton(onPressed: (){},
                    child:  Row(mainAxisSize: MainAxisSize.min, children: [
                      SvgPicture.asset('svg/telegram.svg',color: Colors.white,),
                      const SizedBox(width: 10,),
                      const Text('Contact Telegram')
                    ],
                        )),
                const SizedBox(height: 10,),

                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 24.0),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 3),
                        child: Container(
                          color: dark,
                          height: 1,
                          width: MediaQuery.of(context).size.width,
                        ),
                      ),
                      const Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Icon(Icons.credit_card_rounded),
                              Text(' Depositors:',style: TextStyle(color: Color(0xff03273C),fontSize: 15),)
                            ],
                          ),
                          Text('Manik Dash',style: TextStyle(color: Color(0xff03273C),fontSize: 15),),
                        ],
                      ),

                      Padding(
                        padding: EdgeInsets.symmetric(vertical: 3),
                        child: Container(
                          color: dark,

                          height: 1,
                          width: MediaQuery.of(context).size.width,
                        ),
                      ),
                      const Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Icon(Icons.credit_card_rounded),
                              Text(' User ID:',style: TextStyle(color: Color(0xff03273C,),fontSize: 15),)
                            ],
                          ),
                          Text('3232323',style: TextStyle(color: Color(0xff03273C),fontSize: 15),),
                        ],
                      ),

                      Padding(
                        padding: EdgeInsets.symmetric(vertical: 3),
                        child: Container(
                          color: dark,

                          height: 1,
                          width: MediaQuery.of(context).size.width,
                        ),
                      ),
                      const Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Icon(Icons.credit_card_rounded),
                              Text(' I-Balance:',style: TextStyle(color: Color(0xff03273C),fontSize: 15),)
                            ],
                          ),
                          Text('\$xxxxx',style: TextStyle(color: Color(0xff03273C),fontSize: 15),),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 3),
                        child: Container(
                          color: dark,
                          height: 1,
                          width: MediaQuery.of(context).size.width,
                        ),
                      ),

                    ],
                  ),
                ),
                SizedBox(height: 20,),
                const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text('Membership Expire After',style: TextStyle(color: Color(0xffFAA60C),fontSize: 14),),
                ),
                Container(
                  color: Color(0xffFAA60C),

                  height: 2,
                  width: MediaQuery.of(context).size.width/1.7,
                ),
                const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text('364D: 23H: 59M: 59S',style: TextStyle(fontSize: 22,color: Color(0xffFAA60C),fontWeight: FontWeight.w600),),
                ),



              ],
            )
          ],
        ),
      ),
    );
  }
}
