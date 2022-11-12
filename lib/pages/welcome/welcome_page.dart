import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import 'anim_welcome.dart';

class WelcomePage extends StatefulWidget {
  static const String routeName='/';
  const WelcomePage({Key? key}) : super(key: key);

  @override
  State<WelcomePage> createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
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
