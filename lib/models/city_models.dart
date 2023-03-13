class CityModels {
  CityModels({
      List<Countries>? countries,}){
    _countries = countries;
}

  CityModels.fromJson(dynamic json) {
    if (json['countries'] != null) {
      _countries = [];
      json['countries'].forEach((v) {
        _countries?.add(Countries.fromJson(v));
      });
    }
  }
  List<Countries>? _countries;
CityModels copyWith({  List<Countries>? countries,
}) => CityModels(  countries: countries ?? _countries,
);
  List<Countries>? get countries => _countries;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    if (_countries != null) {
      map['countries'] = _countries?.map((v) => v.toJson()).toList();
    }
    return map;
  }

}

class Countries {
  Countries({
      num? id, 
      num? phone, 
      String? code, 
      String? name, 
      String? symbol, 
      String? capital, 
      String? currency, 
      String? continent, 
      String? continentCode, 
      String? alpha3,}){
    _id = id;
    _phone = phone;
    _code = code;
    _name = name;
    _symbol = symbol;
    _capital = capital;
    _currency = currency;
    _continent = continent;
    _continentCode = continentCode;
    _alpha3 = alpha3;
}

  Countries.fromJson(dynamic json) {
    _id = json['id'];
    _phone = json['phone'];
    _code = json['code'];
    _name = json['name'];
    _symbol = json['symbol'];
    _capital = json['capital'];
    _currency = json['currency'];
    _continent = json['continent'];
    _continentCode = json['continent_code'];
    _alpha3 = json['alpha_3'];
  }
  num? _id;
  num? _phone;
  String? _code;
  String? _name;
  String? _symbol;
  String? _capital;
  String? _currency;
  String? _continent;
  String? _continentCode;
  String? _alpha3;
Countries copyWith({  num? id,
  num? phone,
  String? code,
  String? name,
  String? symbol,
  String? capital,
  String? currency,
  String? continent,
  String? continentCode,
  String? alpha3,
}) => Countries(  id: id ?? _id,
  phone: phone ?? _phone,
  code: code ?? _code,
  name: name ?? _name,
  symbol: symbol ?? _symbol,
  capital: capital ?? _capital,
  currency: currency ?? _currency,
  continent: continent ?? _continent,
  continentCode: continentCode ?? _continentCode,
  alpha3: alpha3 ?? _alpha3,
);
  num? get id => _id;
  num? get phone => _phone;
  String? get code => _code;
  String? get name => _name;
  String? get symbol => _symbol;
  String? get capital => _capital;
  String? get currency => _currency;
  String? get continent => _continent;
  String? get continentCode => _continentCode;
  String? get alpha3 => _alpha3;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = _id;
    map['phone'] = _phone;
    map['code'] = _code;
    map['name'] = _name;
    map['symbol'] = _symbol;
    map['capital'] = _capital;
    map['currency'] = _currency;
    map['continent'] = _continent;
    map['continent_code'] = _continentCode;
    map['alpha_3'] = _alpha3;
    return map;
  }

  @override
  String toString() {
    return 'Countries{_id: $_id, _phone: $_phone, _code: $_code, _name: $_name, _symbol: $_symbol, _capital: $_capital, _currency: $_currency, _continent: $_continent, _continentCode: $_continentCode, _alpha3: $_alpha3}';
  }
}