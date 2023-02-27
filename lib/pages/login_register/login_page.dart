import 'package:art_sweetalert/art_sweetalert.dart';
import 'package:email_validator/email_validator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:glo_project/api_calls/user_api_calls.dart';
import 'package:glo_project/models/error_model.dart';
import 'package:glo_project/models/login_user_model.dart';
import 'package:glo_project/pages/home_page.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../helper_functions/user_info.dart';
import '../../models/registration_user_model.dart';
import '../../utils/error_dialog.dart';
import 'forget_password.dart';
import 'login_welcome.dart';

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
  bool referIconColor=false;
  bool showMailError=false;
  bool showNumberError=false;

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
                                        passwordConfirmation:passConfCon.text,
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
              margin: EdgeInsets.only(top: 10),
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
              keyboardType: TextInputType.number,
            ),
            SizedBox(height: 6,),
            InkWell(
              onTap: (){
                setState(() {
                 referIconColor=!referIconColor;
                 referIconColor?refCon.text='123456789':refCon.text='';
                });
              },
              child: Row(
                children: [
                  Container(
                    height: 16,
                    width: 16,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                      border: Border.all(
                        color: Color(0xff007AFF),
                        width: 2
                      )
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(1.0),
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50),
                          color: referIconColor?Color(0xff007AFF):Colors.white,
                        ),
                        height: 14,
                        width: 14,

                      ),
                    ),
                  ),
                  SizedBox(width: 5,),
                  Text('Official Referral Code',style: TextStyle(color:Color(0xff007AFF) ),)
                ],
              ),
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
                  errorStyle:TextStyle() ,
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
                if(!EmailValidator.validate(value)){
                  return 'Required a valid Email';
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
            SizedBox(height: 3,),
           if(showMailError) Align(
              alignment: Alignment.centerLeft,
                child: Text('Email Must be unique',style: TextStyle(color: Colors.red),)),
            SizedBox(
              height: 5,
            ),
            TextFormField(
              keyboardType: TextInputType.number,
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
            SizedBox(height: 3,),
           if(showNumberError) Align(
                alignment: Alignment.centerLeft,
                child: Text('This phone number is taken',style: TextStyle(color: Colors.red),)),
            SizedBox(
              height: 5,
            ),
            TextFormField(
              keyboardType: TextInputType.number,
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
                  labelText: '  Enter Pin',
                  isDense: true,
                  contentPadding: EdgeInsets.symmetric(horizontal: 0, vertical: 0),
                  prefixIcon: SvgPicture.asset('svg/profile_icon.svg'),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(5),
                  )),
              controller: wpinCon,
            ),
            SizedBox(height: 4,),
            Align(
              alignment: Alignment.centerLeft,
                child: Text('Min : 4 & Max : 6 (Integer Number Only) (ex : 1234)',style: TextStyle(fontSize: 13,color: Color(0xff007AFF)),)),
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
                  labelText: '  Password',
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
                    child: showPassword?Icon(
                      Icons.visibility,
                      color: Color(0xff032D46),
                    ):Icon(
                      Icons.visibility_off,
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
            TextFormField(
              obscureText: showPassword,
              validator: (value){
                if(value==null||value.isEmpty){
                  return 'Required Password';
                }
                if(value!=passCon.text){
                  return 'Confirm password must be same as Password';
                }
                else {
                  return null;
                }
              },
              controller: passConfCon,
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
                    child: showPassword?Icon(
                      Icons.visibility,
                      color: Color(0xff032D46),
                    ):Icon(
                      Icons.visibility_off,
                      color: Color(0xff032D46),
                    ),
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(5),
                  )),
            ),
            SizedBox(height: 10,)
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
                  labelText: '  Enter your Email',
                  isDense: true,
                  contentPadding: EdgeInsets.symmetric(horizontal: 0, vertical: 0),
                  prefixIcon: SvgPicture.asset('svg/profile_icon.svg'),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(5),
                  )),
              validator: (value){
                if(value==null||value.isEmpty){
                  return 'Required your Email';
                }
                if(!EmailValidator.validate(value)){
                  return 'Required a valid email';
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
    final pref=await SharedPreferences.getInstance();
    EasyLoading.show();
    await UserApiCalls.loginUserWithEmailAndPass(loginmailCon.text,loginpassCon.text).then((value) {
      if(value!=null){
        EasyLoading.dismiss();

        if(value['user']!=null){
          var user=value['user'];
          final userInfo=User.fromJson(user);

          final userAllInfo=LoginUserModel.fromJson(value);
          print(userInfo.toJson());
          UserInfo.setUserInfo(userAllInfo);
          //save mail and pass to shared pref
          pref.setString("email",loginmailCon.text.trim());
          pref.setString("pass",loginpassCon.text.trim());

          Navigator.pushNamed(context, HomePage.routeName);
        }
      }
      else {
        EasyLoading.dismiss();
        ArtSweetAlert.show(
            context: context,
            artDialogArgs: ArtDialogArgs(
                type: ArtSweetAlertType.info,
                title: 'Authentication Problem',
                text: 'please check your mail and password'
            )
        );
      }
    });
  }

  Future<void> registerUserwithInfo(RegistrationUserModel userModel) async {
    final pref=await SharedPreferences.getInstance();
    EasyLoading.show();
    setState(() {
      showNumberError=false;
      showMailError=false;
    });

   await UserApiCalls.registrationUser(userModel).then((value) {

     print('valuesss ${value.toString()}');
     EasyLoading.dismiss();
      if(value!=null){
        if(value['status']=='1'){
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
          //set user info
          UserInfo.setUserInfo(loginModel);

          //save mail and pass to shared pref
          pref.setString("email",loginmailCon.text.trim());
          pref.setString("pass",loginpassCon.text.trim());

          Navigator.pushNamed(context, RegistrationWelcome.routeName);
        }

       else if(value['email']!=null){
         print(value['email']);
         setState(() {
           showMailError=true;
         });
        }
        else if(value['userid']!=null){
          print(value['userid']);
          setState(() {
            showNumberError=true;
          });
          // ArtSweetAlert.show(
          //     context: context,
          //     artDialogArgs: ArtDialogArgs(
          //         type: ArtSweetAlertType.info,
          //         title: 'Server Problem',
          //         text: '${value.toString()}'
          //     )
          // );
        }

      }

      else {
        print('This is called');
        EasyLoading.dismiss();
        ArtSweetAlert.show(
            context: context,
            artDialogArgs: ArtDialogArgs(
                type: ArtSweetAlertType.info,
                title: 'Server Problem',
                text: '${value.toString()}'
            )
        );

      }
    });
  }
}
