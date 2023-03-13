import 'package:flutter/cupertino.dart';
import 'package:glo_project/api_calls/user_api_calls.dart';

import '../models/city_models.dart';

class UserProvider extends ChangeNotifier{

  List<Countries> cityList=[];
  List<String> cityNameList=[];

  Future<dynamic> getAllCities() async{

    print('This is called');
    final data = await UserApiCalls.getAllCities();
    cityList.clear();

    for(Map i in data['countries']){
      cityList.add(Countries.fromJson(i));
    }
    cityList.forEach((element) {
      cityNameList.add(element.capital!);
    });




    return cityList;
  }

}