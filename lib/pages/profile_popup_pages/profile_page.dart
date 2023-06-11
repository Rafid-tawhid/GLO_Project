import 'package:flutter/material.dart';
import 'package:glo_ticket/pages/profile_popup_pages/edit_profile_page.dart';

import '../../utils/constants.dart';
import '../../utils/custom_profile_dialoge.dart';
import '../../utils/my_appbar.dart';

final GlobalKey widgetKey = GlobalKey();

class Profile_page extends StatefulWidget {
  const Profile_page({Key? key}) : super(key: key);
  static const String routeName = 'profile_page';

  @override
  State<Profile_page> createState() => _Profile_pageState();
}

class _Profile_pageState extends State<Profile_page> {
  final GlobalKey widgetKey = GlobalKey();
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
              Stack(
                children: [
                  Container(
                    height: 60,
                    width: MediaQuery.of(context).size.width,
                    decoration: const BoxDecoration(
                        color: Color(0xff0792E5),
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(14),
                            topRight: Radius.circular(14))),
                  ),
                  Positioned(
                    left: 0,
                    right: 0,
                    child: Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          ClipRRect(
                            child: Image.network(
                              'https://cdn-icons-png.flaticon.com/512/3135/3135768.png',
                              height: 70,
                              width: 70,
                            ),
                          ),
                          const SizedBox(
                            height: 6,
                          ),
                          const Text(
                            'Md Moshiur Rashid',
                            style: TextStyle(
                                color: Colors.blue, fontSize: 16, letterSpacing: 1),
                          ),
                          const Text(
                            'Official Personal Account',
                            style:
                                TextStyle(color: Color(0xff03273D), fontSize: 12),
                          ),
                          ElevatedButton(
                              onPressed: () {
                                Navigator.pushNamed(context, EditProfilePage.routeName);
                              }, child: Text('Edit Profile')),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 190,
                  ),
                ],
              ),
              Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 12),
                    child: Text('Name: ',style: TextStyle(color:darkBlue,fontWeight: FontWeight.w700),),
                  ),
                  Container(
                    padding: EdgeInsets.all(8),
                    height: 60,
                    child: TextFormField(
                      keyboardType: TextInputType.name,
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Required Pin Number';
                        }
                        if (value.length > 6 || value.length < 4) {
                          return 'please enter a valid pin';
                        } else {
                          return null;
                        }
                      },
                      decoration:  const InputDecoration(
                        contentPadding: EdgeInsets.symmetric(horizontal: 10),
                        hintText: 'Md Mashiur Rashid',
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Color(0xff043655)),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Color(0xff043655)),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 5,),
              Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 12),
                    child: Text('Account: ',style: TextStyle(color:darkBlue,fontWeight: FontWeight.w700),),
                  ),
                  Container(
                    padding: EdgeInsets.all(8),
                    height: 60,
                    child: TextFormField(
                      keyboardType: TextInputType.name,
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Required Pin Number';
                        }
                        if (value.length > 6 || value.length < 4) {
                          return 'please enter a valid pin';
                        } else {
                          return null;
                        }
                      },
                      decoration:  const InputDecoration(
                        contentPadding: EdgeInsets.symmetric(horizontal: 10),
                        hintText: '01682832598',
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Color(0xff043655)),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Color(0xff043655)),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 5,),
              Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 12),
                    child: Text('Email: ',style: TextStyle(color:darkBlue,fontWeight: FontWeight.w700),),
                  ),
                  Container(
                    padding: EdgeInsets.all(8),
                    height: 60,
                    child: TextFormField(
                      keyboardType: TextInputType.name,
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Required Pin Number';
                        }
                        if (value.length > 6 || value.length < 4) {
                          return 'please enter a valid pin';
                        } else {
                          return null;
                        }
                      },
                      decoration:  const InputDecoration(
                        contentPadding: EdgeInsets.symmetric(horizontal: 10),
                        hintText: 'moshiur@gmail.com',
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Color(0xff043655)),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Color(0xff043655)),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 5,),
              Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 12),
                    child: Text('Date of birth: ',style: TextStyle(color:darkBlue,fontWeight: FontWeight.w700),),
                  ),
                  Container(
                    padding: EdgeInsets.all(8),
                    height: 60,
                    child: TextFormField(
                      keyboardType: TextInputType.name,
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Required Pin Number';
                        }
                        if (value.length > 6 || value.length < 4) {
                          return 'please enter a valid pin';
                        } else {
                          return null;
                        }
                      },
                      decoration:  const InputDecoration(
                        contentPadding: EdgeInsets.symmetric(horizontal: 10),
                        hintText: '06/09/1997',
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Color(0xff043655)),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Color(0xff043655)),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 5,),
              Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 12),
                    child: Text('City: ',style: TextStyle(color:darkBlue,fontWeight: FontWeight.w700),),
                  ),
                  Container(
                    padding: EdgeInsets.all(8),
                    height: 60,
                    child: TextFormField(
                      keyboardType: TextInputType.name,
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Required Pin Number';
                        }
                        if (value.length > 6 || value.length < 4) {
                          return 'please enter a valid pin';
                        } else {
                          return null;
                        }
                      },
                      decoration:  const InputDecoration(
                        contentPadding: EdgeInsets.symmetric(horizontal: 10),
                        hintText: 'Dhaka',
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Color(0xff043655)),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Color(0xff043655)),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 10,),
            ],
          ),
        ),
      ),
    );
  }
}
