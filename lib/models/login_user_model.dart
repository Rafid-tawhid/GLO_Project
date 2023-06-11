class LoginUserModel {
  LoginUserModel({
      this.user, 
      this.token,});

  LoginUserModel.fromJson(dynamic json) {
    user = json['user'] != null ? User.fromJson(json['user']) : null;
    token = json['token'];
  }
  User? user;
  String? token;
LoginUserModel copyWith({  User? user,
  String? token,
}) => LoginUserModel(  user: user ?? this.user,
  token: token ?? this.token,
);
  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    if (user != null) {
      map['user'] = user?.toJson();
    }
    map['token'] = token;
    return map;
  }

}

class User {
  User({
      this.id, 
      this.name, 
      this.email, 
      this.adminrole, 
      this.mainadminrole, 
      this.origintime, 
      this.wpin, 
      this.userid, 
      this.accounttype, 
      this.status, 
      this.reference, 
      this.userimg, 
      this.description, 
      this.address, 
      this.city, 
      this.country, 
      this.dateofbirth, 
      this.acounttyperole, 
      this.emailVerifiedAt, 
      this.createdAt, 
      this.updatedAt, 
      this.memberstatus, 
      this.cardtype, 
      this.cardnumber, 
      this.frontendimg, 
      this.backendimg, 
      this.upgradetime, 
      this.upgradetype, 
      this.contactname, 
      this.contactcountry, 
      this.contacttg,});

  User.fromJson(dynamic json) {
    id = json['id'];
    name = json['name'];
    email = json['email'];
    adminrole = json['adminrole'];
    mainadminrole = json['mainadminrole'];
    origintime = json['origintime'];
    wpin = json['wpin'];
    userid = json['userid'];
    accounttype = json['accounttype'];
    status = json['status'];
    reference = json['reference'];
    userimg = json['userimg'];
    description = json['description'];
    address = json['address'];
    city = json['city'];
    country = json['country'];
    dateofbirth = json['dateofbirth'];
    acounttyperole = json['acounttyperole'];
    emailVerifiedAt = json['email_verified_at'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
    memberstatus = json['memberstatus'];
    cardtype = json['cardtype'];
    cardnumber = json['cardnumber'];
    frontendimg = json['frontendimg'];
    backendimg = json['backendimg'];
    upgradetime = json['upgradetime'];
    upgradetype = json['upgradetype'];
    contactname = json['contactname'];
    contactcountry = json['contactcountry'];
    contacttg = json['contacttg'];
  }
  num? id;
  String? name;
  String? email;
  String? adminrole;
  dynamic mainadminrole;
  String? origintime;
  num? wpin;
  String? userid;
  num? accounttype;
  num? status;
  String? reference;
  String? userimg;
  dynamic description;
  dynamic address;
  dynamic city;
  dynamic country;
  dynamic dateofbirth;
  num? acounttyperole;
  dynamic emailVerifiedAt;
  String? createdAt;
  String? updatedAt;
  num? memberstatus;
  dynamic cardtype;
  String? cardnumber;
  dynamic frontendimg;
  dynamic backendimg;
  dynamic upgradetime;
  dynamic upgradetype;
  dynamic contactname;
  dynamic contactcountry;
  dynamic contacttg;
User copyWith({  num? id,
  String? name,
  String? email,
  String? adminrole,
  dynamic mainadminrole,
  String? origintime,
  num? wpin,
  String? userid,
  num? accounttype,
  num? status,
  String? reference,
  String? userimg,
  dynamic description,
  dynamic address,
  dynamic city,
  dynamic country,
  dynamic dateofbirth,
  num? acounttyperole,
  dynamic emailVerifiedAt,
  String? createdAt,
  String? updatedAt,
  num? memberstatus,
  dynamic cardtype,
  String? cardnumber,
  dynamic frontendimg,
  dynamic backendimg,
  dynamic upgradetime,
  dynamic upgradetype,
  dynamic contactname,
  dynamic contactcountry,
  dynamic contacttg,
}) => User(  id: id ?? this.id,
  name: name ?? this.name,
  email: email ?? this.email,
  adminrole: adminrole ?? this.adminrole,
  mainadminrole: mainadminrole ?? this.mainadminrole,
  origintime: origintime ?? this.origintime,
  wpin: wpin ?? this.wpin,
  userid: userid ?? this.userid,
  accounttype: accounttype ?? this.accounttype,
  status: status ?? this.status,
  reference: reference ?? this.reference,
  userimg: userimg ?? this.userimg,
  description: description ?? this.description,
  address: address ?? this.address,
  city: city ?? this.city,
  country: country ?? this.country,
  dateofbirth: dateofbirth ?? this.dateofbirth,
  acounttyperole: acounttyperole ?? this.acounttyperole,
  emailVerifiedAt: emailVerifiedAt ?? this.emailVerifiedAt,
  createdAt: createdAt ?? this.createdAt,
  updatedAt: updatedAt ?? this.updatedAt,
  memberstatus: memberstatus ?? this.memberstatus,
  cardtype: cardtype ?? this.cardtype,
  cardnumber: cardnumber ?? this.cardnumber,
  frontendimg: frontendimg ?? this.frontendimg,
  backendimg: backendimg ?? this.backendimg,
  upgradetime: upgradetime ?? this.upgradetime,
  upgradetype: upgradetype ?? this.upgradetype,
  contactname: contactname ?? this.contactname,
  contactcountry: contactcountry ?? this.contactcountry,
  contacttg: contacttg ?? this.contacttg,
);
  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = id;
    map['name'] = name;
    map['email'] = email;
    map['adminrole'] = adminrole;
    map['mainadminrole'] = mainadminrole;
    map['origintime'] = origintime;
    map['wpin'] = wpin;
    map['userid'] = userid;
    map['accounttype'] = accounttype;
    map['status'] = status;
    map['reference'] = reference;
    map['userimg'] = userimg;
    map['description'] = description;
    map['address'] = address;
    map['city'] = city;
    map['country'] = country;
    map['dateofbirth'] = dateofbirth;
    map['acounttyperole'] = acounttyperole;
    map['email_verified_at'] = emailVerifiedAt;
    map['created_at'] = createdAt;
    map['updated_at'] = updatedAt;
    map['memberstatus'] = memberstatus;
    map['cardtype'] = cardtype;
    map['cardnumber'] = cardnumber;
    map['frontendimg'] = frontendimg;
    map['backendimg'] = backendimg;
    map['upgradetime'] = upgradetime;
    map['upgradetype'] = upgradetype;
    map['contactname'] = contactname;
    map['contactcountry'] = contactcountry;
    map['contacttg'] = contacttg;
    return map;
  }

  @override
  String toString() {
    return 'User{id: $id, name: $name, email: $email, adminrole: $adminrole, mainadminrole: $mainadminrole, origintime: $origintime, wpin: $wpin, userid: $userid, accounttype: $accounttype, status: $status, reference: $reference, userimg: $userimg, description: $description, address: $address, city: $city, country: $country, dateofbirth: $dateofbirth, acounttyperole: $acounttyperole, emailVerifiedAt: $emailVerifiedAt, createdAt: $createdAt, updatedAt: $updatedAt, memberstatus: $memberstatus, cardtype: $cardtype, cardnumber: $cardnumber, frontendimg: $frontendimg, backendimg: $backendimg, upgradetime: $upgradetime, upgradetype: $upgradetype, contactname: $contactname, contactcountry: $contactcountry, contacttg: $contacttg}';
  }
}