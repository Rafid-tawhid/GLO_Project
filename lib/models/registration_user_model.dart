class RegistrationUserModel {
  RegistrationUserModel({
      this.name, 
      this.email, 
      this.password, 
      this.passwordConfirmation, 
      this.wpin, 
      this.reference, 
      this.userid,});

  RegistrationUserModel.fromJson(dynamic json) {
    name = json['name'];
    email = json['email'];
    password = json['password'];
    passwordConfirmation = json['password_confirmation'];
    wpin = json['wpin'];
    reference = json['reference'];
    userid = json['userid'];
  }
  String? name;
  String? email;
  String? password;
  String? passwordConfirmation;
  num? wpin;
  num? reference;
  num? userid;
RegistrationUserModel copyWith({  String? name,
  String? email,
  String? password,
  String? passwordConfirmation,
  num? wpin,
  num? reference,
  num? userid,
}) => RegistrationUserModel(  name: name ?? this.name,
  email: email ?? this.email,
  password: password ?? this.password,
  passwordConfirmation: passwordConfirmation ?? this.passwordConfirmation,
  wpin: wpin ?? this.wpin,
  reference: reference ?? this.reference,
  userid: userid ?? this.userid,
);
  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['name'] = name;
    map['email'] = email;
    map['password'] = password;
    map['password_confirmation'] = passwordConfirmation;
    map['wpin'] = wpin;
    map['reference'] = reference;
    map['userid'] = userid;
    return map;
  }

}