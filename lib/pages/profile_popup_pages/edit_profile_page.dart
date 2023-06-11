
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../utils/constants.dart';
import '../../utils/my_appbar.dart';

class EditProfilePage extends StatefulWidget {
  const EditProfilePage({Key? key}) : super(key: key);
  static const String routeName='edit_profile';

  @override
  State<EditProfilePage> createState() => _EditProfilePageState();
}

class _EditProfilePageState extends State<EditProfilePage> {



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
                child: Text('Edit Profile',style: TextStyle(fontSize: 16,color: Colors.white),),
              ),
              Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ClipRRect(
                      child: Image.network(
                        'https://cdn-icons-png.flaticon.com/512/3135/3135768.png',
                        height: 70,
                        width: 70,
                      ),
                    ),
                  ),
                  Text('Change Picture',style: TextStyle(color: Colors.blue,fontSize: 16),)

                ],
              ),
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
                          child: Text('Name: ',style: TextStyle(color:darkBlue,fontWeight: FontWeight.w700),),
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
                                    child: SvgPicture.asset('svg/userss.svg'),
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
                          child: Text('Email: ',style: TextStyle(color:darkBlue,fontWeight: FontWeight.w700),),
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
                                    child: SvgPicture.asset('svg/email.svg'),
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
                          child: Text('Date of birth: ',style: TextStyle(color:darkBlue,fontWeight: FontWeight.w700),),
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
                                    child: SvgPicture.asset('svg/dob.svg'),
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
                          child: Text('City: ',style: TextStyle(color:darkBlue,fontWeight: FontWeight.w700),),
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
                              hintText: ' Dhaka',
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
                                    child: SvgPicture.asset('svg/city.svg'),
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
                          child: Text('Country: ',style: TextStyle(color:darkBlue,fontWeight: FontWeight.w700),),
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
                              hintText: ' Bangladesh',
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
                                    child: SvgPicture.asset('svg/country.svg'),
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
                          child: Text('Present Address: (Bangladesh)',style: TextStyle(color:darkBlue,fontWeight: FontWeight.w700),),
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
                              hintText: ' Select Country',
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
                                    child: SvgPicture.asset('svg/location.svg'),
                                  )),
                              suffixIcon: Icon(Icons.arrow_drop_down,size: 40,),
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
                          child: ElevatedButton(onPressed: (){}, child: const Text('Update',style: TextStyle(color: Colors.white),)),
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
