import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:glo_project/pages/home_page.dart';

import 'forget_password.dart';

class LoginPage extends StatefulWidget {
  static const String routeName = '/login';

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool checkValue = false;
  bool showFields = true;
  bool showPassword = true;
  Color loginBgColor = Color(0xff032D46);
  Color loginTxtColor = Colors.white;
  Color registerBgColor = Colors.white;
  Color registerTxtColor = Color(0xff032D46);
  String btnTxt='Login';
  final _formKey=GlobalKey<FormState>();
  final _formKey2=GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: ListView(
          children: [
            ListView(
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                      width: MediaQuery.of(context).size.width,
                      child: Image.asset(
                        'images/login_banner.png',
                        fit: BoxFit.fitWidth,
                      )),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    showFields?Text(
                      'Official Member Login!',
                      style: TextStyle(color: Color(0xff008AE5), fontSize: 24),
                    ):Text(
                      'Official Member Register!',
                      style: TextStyle(color: Color(0xff008AE5), fontSize: 24),
                    ),
                  ],
                ),
                SizedBox(
                  height: 5,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 15.0, right: 15),
                  child: Card(
                    elevation: 10,
                    shadowColor: Colors.black,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(22.0),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(12.0),
                            child: Container(
                              margin: EdgeInsets.only(
                                  top: 10, bottom: 10, left: 16, right: 16),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(50),
                                  color: Colors.white,
                                  border: Border.all(
                                      color: Color(0xff032D46), width: 1)),
                              child: Row(
                                children: [
                                  Expanded(
                                      child: InkWell(
                                    onTap: () {
                                      setState(() {
                                        showFields=true;
                                        btnTxt='Login';
                                        loginBgColor = Color(0xff032D46);
                                        loginTxtColor = Colors.white;
                                        registerBgColor = Colors.white;
                                        registerTxtColor = Color(0xff032D46);
                                      });
                                    },
                                    child: Container(
                                      decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(50),
                                          color: loginBgColor,
                                          border: Border.all(
                                              color: Colors.white, width: 1)),
                                      child: Padding(
                                        padding: const EdgeInsets.only(
                                            top: 8.0, bottom: 8),
                                        child: Text("Login",
                                            style: TextStyle(
                                              color: loginTxtColor,
                                            ),
                                            textAlign: TextAlign.center),
                                      ),
                                    ),
                                  )),
                                  Expanded(
                                      child: InkWell(
                                    onTap: () {
                                      setState(() {
                                        showFields=false;
                                        btnTxt='Register';
                                        loginTxtColor = Color(0xff032D46);
                                        loginBgColor = Colors.white;
                                        registerTxtColor = Colors.white;
                                        registerBgColor = Color(0xff032D46);
                                      });
                                    },
                                    child: Container(
                                      decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(50),
                                          color: registerBgColor,
                                          border: Border.all(
                                              color: Colors.white, width: 1)),
                                      child: Padding(
                                        padding: const EdgeInsets.only(
                                            top: 8.0, bottom: 8),
                                        child: Text("Register",
                                            style: TextStyle(
                                              color: registerTxtColor,
                                            ),
                                            textAlign: TextAlign.center),
                                      ),
                                    ),
                                  )),
                                ],
                              ),
                            ),
                          ),
                          showFields?showLoginInfo():showRegisterInfo(),
                          SizedBox(
                            height: 40,
                          ),
                          Container(
                            width: MediaQuery.of(context).size.width,
                            child: ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                    backgroundColor: Color(0xFF032D46)),
                                onPressed: () {
                                  if(showFields==true){
                                    if(_formKey.currentState!.validate()){
                                      Navigator.pushNamed(context, HomePage.routeName);
                                    }
                                  } else if(showFields==false) {
                                    if(_formKey2.currentState!.validate()){
                                      Navigator.pushNamed(context, HomePage.routeName);
                                    }
                                  }

                                },
                                child: Padding(
                                  padding: const EdgeInsets.all(5.0),
                                  child: Text(btnTxt),
                                )),
                          ),
                          SizedBox(
                            height: 30,
                          )
                        ],
                      ),
                    ),
                  ),
                ),

              ],
            ),

            Container(
              alignment: Alignment.center,
              width: MediaQuery.of(context).size.width,
              color: Color(0xff032D46),
              child: FittedBox(
                  child: Padding(
                    padding: const EdgeInsets.only(
                        left: 15.0, right: 15, top: 5, bottom: 5),
                    child: Text(
                      'By continuing you agree to our Terms and Conditions and Privacy Policy',
                      style: TextStyle(
                          color: Colors.white, fontWeight: FontWeight.normal),
                    ),
                  )),
            )
          ],
        ),
      ),
    );
  }

  Column showRegisterInfo() {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Form(
          key: _formKey2,
            child: Column(
          children: [
            TextFormField(
              validator: (value){
                if(value==null||value.isEmpty){
                  return 'Required Referral Code';
                }
                else {
                  return null;
                }
              },
              decoration: InputDecoration(
                  labelText: '  Enter Referral Code',
                  isDense: true,
                  contentPadding: EdgeInsets.symmetric(horizontal: 0, vertical: 0),
                  prefixIcon: SvgPicture.asset('svg/profile_icon.svg'),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(5),
                  )),
            ),
            SizedBox(
              height: 10,
            ),
            TextFormField(
              validator: (value){
                if(value==null||value.isEmpty){
                  return 'Required Your Name';
                }
                else {
                  return null;
                }
              },
              decoration: InputDecoration(
                  labelText: '  Enter Name',
                  isDense: true,
                  contentPadding: EdgeInsets.symmetric(horizontal: 0, vertical: 0),
                  prefixIcon:
                  SizedBox(child: SvgPicture.asset('svg/pass_icon.svg')),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(5),
                  )),
            ),
            SizedBox(
              height: 10,
            ),
            TextFormField(
              validator: (value){
                if(value==null||value.isEmpty){
                  return 'Required Your Email';
                }
                else {
                  return null;
                }
              },
              decoration: InputDecoration(
                  labelText: '  example@gmail.com',
                  isDense: true,
                  contentPadding: EdgeInsets.symmetric(horizontal: 0, vertical: 0),
                  prefixIcon: SvgPicture.asset('svg/profile_icon.svg'),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(5),
                  )),
            ),
            SizedBox(
              height: 10,
            ),
            TextFormField(
              validator: (value){
                if(value==null||value.isEmpty){
                  return 'Required Phone Number';
                }
                else {
                  return null;
                }
              },
              decoration: InputDecoration(
                  labelText: '  01xxxxxxxxxx',
                  isDense: true,
                  contentPadding: EdgeInsets.symmetric(horizontal: 0, vertical: 0),
                  prefixIcon:
                  SizedBox(child: SvgPicture.asset('svg/pass_icon.svg')),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(5),
                  )),
            ),
            SizedBox(
              height: 10,
            ),
            TextFormField(
              validator: (value){
                if(value==null||value.isEmpty){
                  return 'Required Phone Number';
                }
                else {
                  return null;
                }
              },
              decoration: InputDecoration(
                  labelText: '  Enter Pin',
                  isDense: true,
                  contentPadding: EdgeInsets.symmetric(horizontal: 0, vertical: 0),
                  prefixIcon: SvgPicture.asset('svg/profile_icon.svg'),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(5),
                  )),
            ),
            SizedBox(
              height: 10,
            ),
            TextFormField(
              obscureText: showPassword,
              validator: (value){
                if(value==null||value.isEmpty){
                  return 'Required Password';
                }
                else {
                  return null;
                }
              },
              decoration: InputDecoration(
                  labelText: '  Confirm Password',
                  isDense: true,
                  contentPadding: EdgeInsets.symmetric(horizontal: 0, vertical: 0),
                  prefixIcon:
                  SizedBox(child: SvgPicture.asset('svg/pass_icon.svg')),
                  suffixIcon: InkWell(
                    onTap: (){
                      setState(() {
                        showPassword=!showPassword;
                      });
                    },
                    child: Icon(
                      Icons.remove_red_eye_outlined,
                      color: Color(0xff032D46),
                    ),
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(5),
                  )),
            ),
            SizedBox(
              height: 10,
            ),
          ],
        ))
      ],
    );
  }

  Column showLoginInfo() {
    return Column(
      mainAxisSize: MainAxisSize.min,

      children: [
        Form(
          key: _formKey,
            child:Column(
          children: [
            TextFormField(
              decoration: InputDecoration(
                  labelText: '  Enter Phone or Email',
                  isDense: true,
                  contentPadding: EdgeInsets.symmetric(horizontal: 0, vertical: 0),
                  prefixIcon: SvgPicture.asset('svg/profile_icon.svg'),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(5),
                  )),
              validator: (value){
                if(value==null||value.isEmpty){
                  return 'Required Phone or Email';
                }
                else {
                  return null;
                }
              },
            ),
            SizedBox(
              height: 10,
            ),
            TextFormField(
              obscureText: showPassword,
              validator: (value){
                if(value==null||value.isEmpty){
                  return 'Required Password';
                }
                else {
                  return null;
                }
              },
              decoration: InputDecoration(
                  labelText: '  Enter Password',
                  isDense: true,
                  contentPadding: EdgeInsets.symmetric(horizontal: 0, vertical: 0),
                  prefixIcon:
                  SizedBox(child: SvgPicture.asset('svg/pass_icon.svg')),
                  suffixIcon: InkWell(
                    onTap: (){
                      setState(() {
                        showPassword=!showPassword;
                      });
                    },
                    child: Icon(
                      Icons.remove_red_eye_outlined,
                      color: Color(0xff032D46),
                    ),
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(5),
                  ),
              ),
            ),
            SizedBox(
              height: 5,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Checkbox(
                        value: checkValue,
                        onChanged: (value) {
                          setState(() {
                            checkValue = !checkValue;
                          });
                        }),
                    Text('Remember Me')
                  ],
                ),
                InkWell(
                  onTap: (){
                    Navigator.pushNamed(context, ForgetPassword.routeName);
                  },
                    child: Text('Forgot Password?'))
              ],
            ),
          ],
        ))
      ],
    );
  }
}
