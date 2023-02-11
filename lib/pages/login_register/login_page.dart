import 'package:art_sweetalert/art_sweetalert.dart';
import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:glo_project/api_calls/user_api_calls.dart';
import 'package:glo_project/models/login_user_model.dart';
import 'package:glo_project/pages/home_page.dart';

import '../../helper_functions/user_info.dart';
import '../../models/registration_user_model.dart';
import '../../utils/error_dialog.dart';
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
  final  loginmailCon=TextEditingController();
  final  loginpassCon=TextEditingController();
  final  nameCon=TextEditingController();
  final  emlCon=TextEditingController();
  final  passCon=TextEditingController();
  final  passConfCon=TextEditingController();
  final  wpinCon=TextEditingController();
  final  refCon=TextEditingController();
  final  userIdCon=TextEditingController();


  @override
  void dispose() {
    loginmailCon.dispose();
    loginpassCon.dispose();
    nameCon.dispose();
    emlCon.dispose();
    passCon.dispose();
    passConfCon.dispose();
    wpinCon.dispose();
    refCon.dispose();
    userIdCon.dispose();
    super.dispose();
  }

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
                                      loginwithmailpass();
                                    }
                                  } else if(showFields==false) {
                                    if(_formKey2.currentState!.validate()){
                                      final usermodel=RegistrationUserModel(
                                        name:nameCon.text,
                                        email:emlCon.text,
                                        password:passCon.text,
                                        passwordConfirmation:passCon.text,
                                        wpin:num.parse(wpinCon.text),
                                        reference:num.parse(refCon.text),
                                        userid: num.parse(userIdCon.text)
                                      );

                                      registerUserwithInfo(usermodel);

                                     // Navigator.pushNamed(context, HomePage.routeName);
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
              controller: refCon,
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
              controller: nameCon,
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
              controller: emlCon,
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
              controller: userIdCon,
            ),
            SizedBox(
              height: 10,
            ),
            TextFormField(
              validator: (value){
                if(value==null||value.isEmpty){
                  return 'Required Pin Number';
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
              controller: wpinCon,
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
              controller: passCon,
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
              controller: loginmailCon,
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
              controller: loginpassCon,
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

  Future<void> loginwithmailpass() async {
    EasyLoading.show();
    await UserApiCalls.loginUserWithEmailAndPass(loginmailCon.text,loginpassCon.text).then((value) {
      if(value!=null){
        var user=value['user'];
        final userInfo=User.fromJson(user);
        final userAllInfo=LoginUserModel.fromJson(value);
         print(userInfo.toJson());
        UserInfo.setUserInfo(userAllInfo);
        EasyLoading.dismiss();
        Navigator.pushNamed(context, HomePage.routeName);
      }
      else {
        EasyLoading.dismiss();
        ErrorDialog(ArtSweetAlertType.info,'Server Problem','Please try after some time');
      }
    });
  }

  Future<void> registerUserwithInfo(RegistrationUserModel userModel) async {
    print('userModel.toJson() ${userModel.toJson()}');
  //  EasyLoading.show();
   await UserApiCalls.registrationUser(userModel).then((value) {
      if(value!=null){
        print(value.toString());
        final userInfo=RegistrationUserModel.fromJson(value);
        print('userInfo.name ${userInfo.toJson()}');
        final loginModel=LoginUserModel(
          user: User(
            email: userInfo.email,
            name: userInfo.name,
            userid: userInfo.userid.toString()
          )
        );
        print('login model ${loginModel.toJson()}');
        UserInfo.setUserInfo(loginModel);
         EasyLoading.dismiss();
        // Navigator.pushNamed(context, HomePage.routeName);
      }
      else {
        EasyLoading.dismiss();
        ErrorDialog(ArtSweetAlertType.info,'Server Problem','Please try after some time');
      }
    });
  }
}
