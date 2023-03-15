


import 'package:glo_project/helper_functions/user_info.dart';

class VerifyUserModel{
  String? imageName;
  String? imageFront;
  String? imageBack;
  String city;
  String country;
  String dob;
  String cardType;
  String name;
  String email;
  String address;

  VerifyUserModel(
      {
       this.imageName,
     this.imageFront,
     this.imageBack,
     required this.city,
     required this.country,
     required this.dob,
     required this.cardType,
     required this.name,
     required this.email,
     required this.address,
     });

  Map<String, String> toMap() {
    final map = <String, String>{};
    map['id']=UserInfo.loginUserModel!.user!.id!.toString();
    // map['imagename'] = imageName;
    // map['imagenamefront'] = imageFront;
    // map['imagenameback'] = imageBack;
    map['city'] = city;
    map['dateofbirth'] = dob;
    map['cardtype'] = cardType;
    map['name'] = name;
    map['email'] = email;
    map['address'] = address;
    return map;
  }
}