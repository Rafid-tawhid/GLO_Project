import 'package:shared_preferences/shared_preferences.dart';

import '../models/login_user_model.dart';

class UserInfo{
  static LoginUserModel? loginUserModel;
  late SharedPreferences preferences;

  static setUserInfo(LoginUserModel userModel){
    loginUserModel=userModel;
  }
  static LoginUserModel? getUserInfo(){
    return loginUserModel;
  }
}