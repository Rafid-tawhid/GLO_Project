import 'package:flutter/material.dart';
import 'package:glo_project/pages/login_register/login_page.dart';
import 'package:glo_project/pages/login_register/login_welcome.dart';

class ForgetPassword extends StatelessWidget {
  static const String routeName='/forget';
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: ListView(
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
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                'Forgot Password',
                style: TextStyle(color: Color(0xff008AE5), fontSize: 24),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 15.0, right: 15),
              child: Container(
                height: MediaQuery.of(context).size.height/2,
                child: Card(
                  elevation: 10,
                  shadowColor: Colors.black,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(22.0),
                    child: Column(

                      children: [
                        Column(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            SizedBox(height: 20,),
                            TextField(
                              decoration: InputDecoration(
                                  labelText: '  Enter Your Email',
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(5),
                                  )),
                            ),
                            SizedBox(height: 10,),
                            Container(
                              width: MediaQuery.of(context).size.width,
                              child: ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                      backgroundColor: Color(0xFF032D46)),
                                  onPressed: () {
                                    Navigator.pushNamed(context, LoginWelcome.routeName);
                                  },
                                  child: Padding(
                                    padding: const EdgeInsets.all(10.0),
                                    child: Text('Send Password Reset Link'),
                                  )),
                            ),
                          ],
                        ),
                        Spacer(),
                        Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Text('Already have an account?'),
                            SizedBox(height: 3,),
                            InkWell(
                              onTap: (){
                                Navigator.pushNamed(context, LoginPage.routeName);
                              },
                                child: Text('Login',style: TextStyle(color: Colors.blueAccent),))
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
