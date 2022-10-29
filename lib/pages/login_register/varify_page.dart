import 'package:flutter/material.dart';
import 'package:glo_project/pages/home_page.dart';

import '../../utils/constants.dart';

class VerificationPage extends StatefulWidget {
  static const String routeName = '/verify_page';
  const VerificationPage({Key? key}) : super(key: key);

  @override
  State<VerificationPage> createState() => _VerificationPageState();
}

class _VerificationPageState extends State<VerificationPage> {
  var cities;
  var types;
  bool showForm = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Card(
          elevation: 10,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
          child: ListView(
            children: [
              showForm ? verificationForm(context) : varificationPending()
            ],
          ),
        ),
      ),
    );
  }

  Column varificationPending() {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 8.0, right: 8, top: 8),
          child: Container(
              width: MediaQuery.of(context).size.width,
              child: Image.asset(
                'images/login_banner.png',
                fit: BoxFit.fitWidth,
              )),
        ),
        SizedBox(
          height: 30,
        ),
        Card(
          elevation: 10,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
          child: Padding(
            padding: const EdgeInsets.all(28.0),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      'Account Type',
                      style: TextStyle(fontSize: 20),
                    ),
                    Text(
                      '(Pending Verification)',
                      style: TextStyle(color: Colors.lightBlueAccent),
                    )
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Text('Your information has been submitted'),
                Text('successfully. Our team will check your'),
                Text('information within 24-48 hours'),
              ],
            ),
          ),
        ),
        SizedBox(
          height: 50,
        ),
        Padding(
          padding: const EdgeInsets.all(4.0),
          child: ElevatedButton.icon(
            icon: Icon(Icons.home),
            style: ElevatedButton.styleFrom(backgroundColor: Color(0xff032D46)),
            onPressed: () {
              Navigator.pushNamed(context, HomePage.routeName);
            },
            label: Text(
              'Home',
              style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
            ),
          ),
        )
      ],
    );
  }

  Column verificationForm(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        SizedBox(
          height: 15,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'ACCOUNT TYPE',
              style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                  color: Color(0xff032D46)),
            ),
            Text(
              ' (Unverified)',
              style: TextStyle(
                  fontWeight: FontWeight.bold, color: Color(0xff008AE5)),
            )
          ],
        ),
        SizedBox(
          height: 2,
        ),
        Align(
            alignment: Alignment.center,
            child: Text(
              'Please Enter Correct Personal Information',
              style: TextStyle(
                  fontWeight: FontWeight.bold, color: Color(0xff032D46)),
            )),
        SizedBox(
          height: 30,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'General Information',
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Color(0xff032D46),
                  fontSize: 22),
            ),
          ],
        ),
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
                  'Upload Profile Image',
                  textAlign: TextAlign.start,
                ),
                SizedBox(
                  height: 5,
                ),
                TextField(
                  decoration: InputDecoration(
                      labelText: '  No file chosen',
                      isDense: true,
                      contentPadding:
                          EdgeInsets.symmetric(horizontal: 0, vertical: 0),
                      prefixIcon: Padding(
                        padding: const EdgeInsets.all(1.0),
                        child: TextButton(
                          style: TextButton.styleFrom(
                            backgroundColor: Color(0xffE9ECEF),
                            side: BorderSide(color: Colors.grey, width: 1),
                          ),
                          child: Text('Chose Image'),
                          onPressed: () {},
                        ),
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5),
                      )),
                ),
                SizedBox(
                  height: 10,
                ),
                Text('Name'),
                SizedBox(
                  height: 5,
                ),
                TextField(
                  decoration: InputDecoration(
                      labelText: '  Enter Name here',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5),
                      )),
                ),
                SizedBox(
                  height: 10,
                ),
                Text('Email'),
                SizedBox(
                  height: 5,
                ),
                TextField(
                  decoration: InputDecoration(
                      labelText: '  example@gmail.com',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5),
                      )),
                ),
                SizedBox(
                  height: 10,
                ),
                Text('Date of Birth'),
                SizedBox(
                  height: 5,
                ),
                TextField(
                  decoration: InputDecoration(
                      labelText: '  Enter Date',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5),
                      )),
                ),
                SizedBox(
                  height: 10,
                ),
                Text('City'),
                SizedBox(
                  height: 5,
                ),
                TextField(
                  decoration: InputDecoration(
                      labelText: '  Enter City',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5),
                      )),
                ),
                SizedBox(
                  height: 10,
                ),
                Text('Country'),
                SizedBox(
                  height: 5,
                ),
                DropdownButtonFormField(
                  validator: (value) {
                    if (value == null) {
                      return 'Select a City';
                    } else {
                      return null;
                    }
                  },
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.grey),
                        borderRadius: BorderRadius.all(Radius.circular(5))),
                  ),
                  hint: Text('Select a City'),
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
                Text('Present Address'),
                SizedBox(
                  height: 5,
                ),
                TextField(
                  decoration: InputDecoration(
                      labelText: '  Enter Address',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5),
                      )),
                ),
                SizedBox(
                  height: 10,
                ),
                Text('NID/Passport/Driving License'),
                SizedBox(
                  height: 5,
                ),
                DropdownButtonFormField(
                  validator: (value) {
                    if (value == null) {
                      return 'Select an identification';
                    } else {
                      return null;
                    }
                  },
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.grey),
                        borderRadius: BorderRadius.all(Radius.circular(5))),
                  ),
                  hint: Text('Select a type'),
                  value: types,
                  onChanged: (value) {
                    setState(() {
                      types = value;
                    });
                  },
                  items: gtypes
                      .map((e) => DropdownMenuItem(
                            child: SizedBox(child: new Text(e)),
                            value: e,
                          ))
                      .toList(),
                ),
                SizedBox(
                  height: 10,
                ),
                Text('Frontside Image'),
                SizedBox(
                  height: 5,
                ),
                TextField(
                  decoration: InputDecoration(
                      labelText: '  No file chosen',
                      isDense: true,
                      contentPadding:
                          EdgeInsets.symmetric(horizontal: 0, vertical: 0),
                      prefixIcon: Padding(
                        padding: const EdgeInsets.all(1.0),
                        child: TextButton(
                          style: TextButton.styleFrom(
                            backgroundColor: Color(0xffE9ECEF),
                            side: BorderSide(color: Colors.grey, width: 1),
                          ),
                          child: Text('Chose Image'),
                          onPressed: () {},
                        ),
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5),
                      )),
                ),
                SizedBox(
                  height: 10,
                ),
                Text('Backside Image'),
                SizedBox(
                  height: 5,
                ),
                TextField(
                  decoration: InputDecoration(
                      labelText: '  No file chosen',
                      isDense: true,
                      contentPadding:
                          EdgeInsets.symmetric(horizontal: 0, vertical: 0),
                      prefixIcon: Padding(
                        padding: const EdgeInsets.all(1.0),
                        child: TextButton(
                          style: TextButton.styleFrom(
                            backgroundColor: Color(0xffE9ECEF),
                            side: BorderSide(color: Colors.grey, width: 1),
                          ),
                          child: Text('Chose Image'),
                          onPressed: () {},
                        ),
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5),
                      )),
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                    width: MediaQuery.of(context).size.width,
                    child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Color((0xff032D46))),
                        onPressed: () {
                          setState(() {
                            showForm = false;
                          });
                        },
                        child: Text('Submit')))
              ],
            ),
          ),
        ),
      ],
    );
  }
}
