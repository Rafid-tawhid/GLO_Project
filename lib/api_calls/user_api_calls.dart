import 'dart:convert';

import 'package:glo_project/api_calls/api_end_url.dart';
import 'package:glo_project/models/error_model.dart';
import 'package:glo_project/models/verify_user_model.dart';
import 'package:http/http.dart';

import '../helper_functions/user_info.dart';
import '../models/city_models.dart';
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
      if (response.statusCode == 400) {
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


  static Future<dynamic> getAllCities() async {
    var data;
    final token= UserInfo.loginUserModel!.token;
    try {
      Response response = await get(
          Uri.parse('$baseUrl${ApiEnd.countries}'),
          //Uri.parse('https://www.testapi.gloticket.org/api/login'),
          headers: {
            'Content-Type': 'application/json; charset=UTF-8',
            'Accept': 'application/json',
            'authorization': 'Bearer $token',
          },);

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


  static Future<dynamic> verificationOfUser(VerifyUserModel verifyUserModel) async {
    var data;
    final token= UserInfo.loginUserModel!.token;

    try {
      Response response = await post(
          Uri.parse('$baseUrl${ApiEnd.verification}${UserInfo.loginUserModel!.user!.id}'),
          //Uri.parse('https://www.testapi.gloticket.org/api/login'),
          headers: {
            'Accept': 'application/json',
            'authorization': 'Bearer $token',
          },
          body: verifyUserModel.toMap());

      data =await jsonDecode(response.body.toString());
      print('Data 1 ${data}');

      if (response.statusCode == 200) {
        data =await jsonDecode(response.body.toString());
        print('Data ${data}');
        return data;
      }
      if (response.statusCode == 400) {
        print(' 2 ${data}');
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