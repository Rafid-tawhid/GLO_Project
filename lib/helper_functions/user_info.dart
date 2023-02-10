import '../models/login_user_model.dart';

class UserInfo{
  static LoginUserModel? loginUserModel;

  static setUserInfo(LoginUserModel userModel){
    loginUserModel=userModel;
  }
  static LoginUserModel? getUserInfo(){
    return loginUserModel;
  }
}