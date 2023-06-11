import 'package:art_sweetalert/art_sweetalert.dart';
import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:flutter_svg/svg.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../api_calls/user_api_calls.dart';
import '../../helper_functions/user_info.dart';
import '../../models/login_user_model.dart';
import '../home_page.dart';
import 'anim_welcome.dart';

class WelcomePage extends StatefulWidget {
  static const String routeName='/';
  const WelcomePage({Key? key}) : super(key: key);

  @override
  State<WelcomePage> createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {


  @override
  void initState() {

    Future.delayed(Duration.zero,() async {
        final pref=await SharedPreferences.getInstance();

        //if login previously get data and login to home page
        if(pref.getString("email")!=null&&pref.getString("pass")!=null){
          EasyLoading.show();
          final email=await pref.getString("email");
          final pass=await pref.getString("pass");
          print(email!+pass!);
          UserApiCalls.loginUserWithEmailAndPass(email!,pass!).then((value) {
            EasyLoading.dismiss();
            if(value!=null){

              if(value['user']!=null){
                var user=value['user'];
                final userInfo=User.fromJson(user);

                final userAllInfo=LoginUserModel.fromJson(value);
                print(userInfo.toJson());
                UserInfo.setUserInfo(userAllInfo);
                Navigator.pushNamed(context, HomePage.routeName);
              }
            }

          });
        }

    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('images/welcome_bg.png',),
                    fit: BoxFit.cover
                )
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [

                Padding(
                  padding: const EdgeInsets.only(left: 20,right: 20,top: 20),
                  child: Image.asset('images/welcome.png',fit: BoxFit.cover),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 50,right: 50,bottom: 15),
                  child: SvgPicture.asset('svg/glo_logo2.svg'),
                ),
                Center(
                  child: InkWell(
                    onTap: (){
                      Navigator.pushNamed(context, WelcomeAnim.routeName);
                    },
                    child: Container(
                      width: 120,
                      height: 40,
                      alignment: Alignment.center,
                      child:  Text('JOIN US',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,),),
                      decoration: BoxDecoration(

                        borderRadius: BorderRadius.circular(10),
                        image: DecorationImage(
                            image:AssetImage("images/join_us.png"),
                            fit:BoxFit.cover
                        ),
                      ),
                    ),
                  ),


                ),
                SizedBox(height: 5,)


              ],
            ),
          ),
        ],
      ),
    );
  }
}
