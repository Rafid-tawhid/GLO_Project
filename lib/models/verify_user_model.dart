

import 'dart:io';

class VerifyUserModel{
  File imageName;
  File imageFront;
  File imageBack;
  String city;
  String country;
  String dob;
  String cardType;
  String name;
  String email;
  String address;

  VerifyUserModel(
      {
       required this.imageName,
     required this.imageFront,
     required this.imageBack,
     required this.city,
     required this.country,
     required this.dob,
     required this.cardType,
     required this.name,
     required this.email,
     required this.address,
     });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['imagename'] = imageName;
    map['imagenamefront'] = imageFront;
    map['imagenameback'] = imageBack;
    map['city'] = city;
    map['dateofbirth'] = dob;
    map['cardtype'] = cardType;
    map['name'] = name;
    map['email'] = email;
    map['address'] = address;
    return map;
  }
}