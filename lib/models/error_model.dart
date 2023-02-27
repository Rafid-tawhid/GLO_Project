class ErrorModel {
  ErrorModel({
      List<String>? email, 
      List<String>? wpin, 
      List<String>? userid,}){
    _email = email;
    _wpin = wpin;
    _userid = userid;
}

  ErrorModel.fromJson(dynamic json) {
    _email = json['email'] != null ? json['email'].cast<String>() : [];
    _wpin = json['wpin'] != null ? json['wpin'].cast<String>() : [];
    _userid = json['userid'] != null ? json['userid'].cast<String>() : [];
  }
  List<String>? _email;
  List<String>? _wpin;
  List<String>? _userid;
ErrorModel copyWith({  List<String>? email,
  List<String>? wpin,
  List<String>? userid,
}) => ErrorModel(  email: email ?? _email,
  wpin: wpin ?? _wpin,
  userid: userid ?? _userid,
);
  List<String>? get email => _email;
  List<String>? get wpin => _wpin;
  List<String>? get userid => _userid;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['email'] = _email;
    map['wpin'] = _wpin;
    map['userid'] = _userid;
    return map;
  }

  @override
  String toString() {
    return 'ErrorModel{_email: $_email, _wpin: $_wpin, _userid: $_userid}';
  }
}