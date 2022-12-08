import 'dart:convert';

import 'package:http/http.dart';

import '../models/login_user_model.dart';

class UserApiCalls{
  static String baseUrl='https://www.testapi.gloticket.org/';

 static Future<dynamic> loginUserWithEmailAndPass(String email,String pass) async {
   var data;
   try {
     Response response = await post(
         Uri.parse('$baseUrl/api/login'),
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
       return jsonDecode(response.body.toString());
     }
   } catch (e) {
     print(e.toString());
   }
  }




}