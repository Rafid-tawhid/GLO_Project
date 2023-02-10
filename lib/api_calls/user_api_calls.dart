import 'dart:convert';

import 'package:glo_project/api_calls/api_end_url.dart';
import 'package:http/http.dart';

import '../models/login_user_model.dart';
import '../models/registration_user_model.dart';

class UserApiCalls{
  static String baseUrl='https://www.testapi.gloticket.org/';

 static Future<dynamic> loginUserWithEmailAndPass(String email,String pass) async {
   var data;
   try {
     Response response = await post(
          Uri.parse('$baseUrl${ApiEnd.login}'),
         //Uri.parse('https://www.testapi.gloticket.org/api/login'),
         // headers: {
         //   'Accept': 'application/json',
         // },
         body: jsonEncode({
           "email": "marzuk22@gloticket.com",
           "password": "123456",
         }));
     
     if (response.statusCode == 201) {
       data =await jsonDecode(response.body.toString());
       return data;
     }
     else {
       print('Failed........');
       return null;
     }
   } catch (e) {
     print(e.toString());
   }
  }


  static Future<dynamic> registrationUser(RegistrationUserModel? userModel) async {
    var data;
    try {
      Response response = await post(
          Uri.parse('$baseUrl${ApiEnd.registration}'),
          //Uri.parse('https://www.testapi.gloticket.org/api/login'),
          // headers: {
          //   'Accept': 'application/json',
          // },
          body: jsonEncode({
            "name": "Marzuk Islam 5",
            "email": "marzuk55@gloticket.com",
            "password": "123456",
            "password_confirmation": "123456",
            "wpin": 1987,
            "reference": 1234,
            "userid": 1237653314
          }));

      if (response.statusCode == 200) {
        data =await jsonDecode(response.body.toString());
        return data;
      }
      else {
        print('Failed........');
        return null;
      }
    } catch (e) {
      print(e.toString());
    }
  }

}