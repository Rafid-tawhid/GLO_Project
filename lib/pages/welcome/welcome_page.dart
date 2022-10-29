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
      body: Container(
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage('images/welcome_bg.png',),
                fit: BoxFit.cover
            )
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [

            Container(height: 30,),
            Padding(
              padding: const EdgeInsets.only(left: 20,right: 20,top: 20),
              child: Image.asset('images/welcome.png',fit: BoxFit.cover),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 50,right: 50,bottom: 15),
              child: SvgPicture.asset('svg/glo_logo2.svg'),
            ),
            Center(
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(backgroundColor: Color(0xffFFC813)),
                onPressed: (){
                  Navigator.pushNamed(context, WelcomeAnim.routeName);
                },
                child: Text('JOIN US',style: TextStyle(color: Colors.white),),
              ),
            ),


          ],
        ),
      ),
    );
  }
}
