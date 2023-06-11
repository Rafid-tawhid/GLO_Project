import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../utils/constants.dart';
import '../../utils/my_appbar.dart';

class PinSettingPage extends StatefulWidget {
  const PinSettingPage({Key? key}) : super(key: key);
  static const String routeName='/pin_setting';

  @override
  State<PinSettingPage> createState() => _PinSettingPageState();
}

class _PinSettingPageState extends State<PinSettingPage> {
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
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 30,horizontal: 10),
        child: Card(
          elevation: 4.0, // Set the elevation here

          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10.0), // Set the border radius here
          ),
          child: ListView(
            children: [
              Container(
                height: 60,
                alignment: Alignment.center,
                width: MediaQuery.of(context).size.width,
                decoration: const BoxDecoration(
                    color: Color(0xff0792E5),
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(14),
                        topRight: Radius.circular(14))),
                child: Text('Pin Setting',style: TextStyle(fontSize: 22,color: Colors.white),),
              ),
              const SizedBox(height: 20,),
              const Align(alignment: Alignment.center, child: Text('Change pin',style: TextStyle(fontSize: 28,color: Color(0xff03273C),fontWeight: FontWeight.w600),)),
              const SizedBox(height: 5,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    color: Colors.blue,
                    height: 2,
                    width: MediaQuery.of(context).size.width/2,
                  ),
                ],
              ),
              const SizedBox(height: 10,),

              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10.0),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(6),
                          child: Text('Old Pin(min:4, max:8)',style: TextStyle(color:darkBlue,fontWeight: FontWeight.w700),),
                        ),
                        TextFormField(

                          validator: (value){
                            if(value==null||value.isEmpty){
                              return 'Required Pin Number';
                            }
                            if(value.length>6||value.length<4){
                              return 'please enter a valid pin';
                            }
                            else {
                              return null;
                            }
                          },
                          decoration: InputDecoration(
                              hintText: ' Md Moshuir Rahman',
                              isDense: true,
                              contentPadding: EdgeInsets.symmetric(horizontal: 10, vertical: 0),
                              prefixIcon: Container(
                                  decoration: BoxDecoration(
                                    color: Color(0xffe9ecef),
                                    border: Border.all(
                                      width: 0.6,
                                      color: Color(0xff032d46),
                                    ),
                                    borderRadius: BorderRadius.circular(6),

                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.all(13),
                                    child: SvgPicture.asset('svg/keyss.svg'),
                                  )),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(5),
                              )),

                        ),
                      ],
                    ),
                    Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(height: 5,),
                        Padding(
                          padding: const EdgeInsets.all(6),
                          child: Text('New Pin(min:4, max:8)',style: TextStyle(color:darkBlue,fontWeight: FontWeight.w700),),
                        ),
                        TextFormField(

                          validator: (value){
                            if(value==null||value.isEmpty){
                              return 'Required Pin Number';
                            }
                            if(value.length>6||value.length<4){
                              return 'please enter a valid pin';
                            }
                            else {
                              return null;
                            }
                          },
                          decoration: InputDecoration(
                              hintText: ' example@gmail.com',
                              isDense: true,
                              contentPadding: EdgeInsets.symmetric(horizontal: 10, vertical: 0),
                              prefixIcon: Container(
                                  decoration: BoxDecoration(
                                    color: Color(0xffe9ecef),
                                    border: Border.all(
                                      width: 0.6,
                                      color: Color(0xff032d46),
                                    ),
                                    borderRadius: BorderRadius.circular(6),

                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.all(13),
                                    child: SvgPicture.asset('svg/keyss.svg'),
                                  )),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(5),
                              )),

                        ),
                      ],
                    ),
                    Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(height: 5,),
                        Padding(
                          padding: const EdgeInsets.all(6),
                          child: Text('Confirm New Pin(min:4, max:8)',style: TextStyle(color:darkBlue,fontWeight: FontWeight.w700),),
                        ),
                        TextFormField(

                          validator: (value){
                            if(value==null||value.isEmpty){
                              return 'Required Pin Number';
                            }
                            if(value.length>6||value.length<4){
                              return 'please enter a valid pin';
                            }
                            else {
                              return null;
                            }
                          },
                          decoration: InputDecoration(
                              hintText: ' dd/mm/yyyy',
                              isDense: true,
                              contentPadding: EdgeInsets.symmetric(horizontal: 10, vertical: 0),
                              prefixIcon: Container(
                                  decoration: BoxDecoration(
                                    color: Color(0xffe9ecef),
                                    border: Border.all(
                                      width: 0.6,
                                      color: Color(0xff032d46),
                                    ),
                                    borderRadius: BorderRadius.circular(6),

                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.all(13),
                                    child: SvgPicture.asset('svg/keyss.svg'),
                                  )),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(5),
                              )),

                        ),
                      ],
                    ),

                    SizedBox(height: 20,),
                    Row(
                      children: [
                        const Expanded(child: Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Text(''),
                        )),
                        const Expanded(child: Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Text(''),
                        )),
                        Expanded(child:  Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: ElevatedButton(onPressed: (){}, child: const Text('Submit',style: TextStyle(color: Colors.white),)),
                        )),
                      ],
                    ),
                  ],
                ),
              )


            ],
          ),
        ),
      ),
    );
  }
}
