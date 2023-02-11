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
           "email": email,
           "password": pass,
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


  static Future<dynamic> registrationUser(RegistrationUserModel userModel) async {
    var data;
    try {
      Response response = await post(
          Uri.parse('$baseUrl${ApiEnd.registration}'),
          //Uri.parse('https://www.testapi.gloticket.org/api/login'),
          // headers: {
          //   'Accept': 'application/json',
          // },
          body: jsonEncode(userModel.toJson()));

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