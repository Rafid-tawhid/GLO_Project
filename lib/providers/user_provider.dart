import 'package:flutter/cupertino.dart';
import 'package:glo_project/api_calls/user_api_calls.dart';

import '../models/city_models.dart';

class UserProvider extends ChangeNotifier{

  List<CityModels> cityList=[];

  Future<List<CityModels>> getAllCities()async{

    print('This is called');
    final data = await UserApiCalls.getAllCities();
    cityList.clear();
    print('This is data ${data.toString()}');
    for(Map i in data){
      cityList.add(CityModels.fromJson(i));
    }
    print('cityList ${cityList.length}');

    return cityList;
  }

}