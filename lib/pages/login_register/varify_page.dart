
import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:email_validator/email_validator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:glo_project/pages/home_page.dart';
import 'package:http_parser/http_parser.dart';
import 'package:image_picker/image_picker.dart';
import 'package:intl/intl.dart';
import 'package:mime/mime.dart';
import 'package:provider/provider.dart';

import '../../api_calls/api_end_url.dart';
import '../../api_calls/user_api_calls.dart';
import '../../helper_functions/user_info.dart';
import '../../models/verify_user_model.dart';
import '../../providers/user_provider.dart';
import '../../utils/constants.dart';
import 'package:http/http.dart' as http;

class VerificationPage extends StatefulWidget {
  static const String routeName = '/verify_page';
  const VerificationPage({Key? key}) : super(key: key);

  @override
  State<VerificationPage> createState() => _VerificationPageState();
}

class _VerificationPageState extends State<VerificationPage> {
  var cities;
  var countries;
  var types;
  bool showForm = true;
  String? _imagePath1;

  // File? _file1;
  String? _imagePath2;

  // File? _file2;
  String? _imagePath3;
  String _dob = 'Enter Date';

  // File? _file3;
  final _formKey = GlobalKey<FormState>();
  final profileCon = TextEditingController();
  final frontImgCon = TextEditingController();
  final backImgCon = TextEditingController();
  final nameCon = TextEditingController();
  final emailCon = TextEditingController();
  final dobCon = TextEditingController();
  final cityCon = TextEditingController();
  final addressCon = TextEditingController();
  final nidCon = TextEditingController();

  // String dropdownvalue='Kabul';
  ImageSource _imageSource = ImageSource.gallery;
  late UserProvider provider;
  List<String> imagesList = [];
  Dio dio = new Dio();


  @override
  void dispose() {
    profileCon.dispose();
    frontImgCon.dispose();
    backImgCon.dispose();
    nameCon.dispose();
    emailCon.dispose();
    dobCon.dispose();
    cityCon.dispose();
    addressCon.dispose();
    nidCon.dispose();
    super.dispose();
  }

  @override
  void didChangeDependencies() {
    provider = Provider.of(context, listen: true);
    super.didChangeDependencies();
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Card(
            elevation: 4,
            shape:
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
            child: ListView(
              shrinkWrap: true,
              children: [
                showForm ? verificationForm(context) : varificationPending()
              ],
            ),
          ),
        ),
      ),
    );
  }

  Column varificationPending() {
    return Column(
      children: [

        Padding(
          padding: const EdgeInsets.only(left: 8.0, right: 8, top: 8),
          child: Container(
              width: MediaQuery
                  .of(context)
                  .size
                  .width,
              child: Image.asset(
                'images/login_banner.png',
                fit: BoxFit.fitWidth,
              )),
        ),
        SizedBox(
          height: 10,
        ),
        Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Container(
                padding: EdgeInsets.only(top: 5, bottom: 5),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(6),
                    border: Border.all(
                        color: Colors.blue,
                        width: 1
                    )
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [

                            Text(
                              'ACCOUNT TYPE',
                              style: TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.bold),
                            ),

                          ],
                        ),
                        SizedBox(height: 5,),
                        Text(
                          '(Pending Verification)',
                          style: TextStyle(color: Colors.lightBlueAccent,
                              fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ],
                ),
              ),

              SizedBox(
                height: 10,
              ),
              Text('Your information has been submitted'),
              Text('successfully. Our team will check your'),
              Text('information within 24-48 hours'),
            ],
          ),
        ),
        SizedBox(
          height: 20,
        ),
        Padding(
          padding: const EdgeInsets.all(4.0),
          child: ElevatedButton.icon(
            icon: Icon(Icons.home),
            style: ElevatedButton.styleFrom(backgroundColor: Color(0xff032D46)),
            onPressed: () {
              Navigator.pushNamed(context, HomePage.routeName);
            },
            label: Text(
              'Home',
              style: TextStyle(
                  fontWeight: FontWeight.bold, color: Colors.white),
            ),
          ),
        )
      ],
    );
  }

  SafeArea verificationForm(BuildContext context) {
    return SafeArea(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          SizedBox(
            height: 15,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'ACCOUNT TYPE',
                style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                    color: Color(0xff032D46)),
              ),
              Text(
                ' (Unverified)',
                style: TextStyle(
                    fontWeight: FontWeight.bold, color: Color(0xff008AE5)),
              )
            ],
          ),
          SizedBox(
            height: 2,
          ),
          Align(
              alignment: Alignment.center,
              child: Text(
                'Please Enter Correct Personal Information',
                style: TextStyle(
                    fontWeight: FontWeight.bold, color: Color(0xff032D46)),
              )),
          SizedBox(
            height: 30,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'General Information',
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Color(0xff032D46),
                    fontSize: 22),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: Form(
              key: _formKey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    'Upload Profile Image',
                    textAlign: TextAlign.start,
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  TextFormField(
                    controller: profileCon,
                    decoration: InputDecoration(
                        labelText: '  No file chosen',
                        isDense: true,
                        contentPadding: EdgeInsets.symmetric(
                            horizontal: 0, vertical: 0),
                        prefixIcon: Padding(
                          padding: const EdgeInsets.all(0.0),
                          child: TextButton(
                              style: TextButton.styleFrom(
                                backgroundColor: Color(0xffE9ECEF),
                                side: BorderSide(color: Colors.grey, width: 1),
                              ),
                              child: Text('Chose Image'),
                              onPressed: _getImage1

                          ),
                        ),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5),
                        )),
                    validator: (val) {
                      if (_imagePath1 == null) {
                        return 'Profile image is required';
                      }
                      else {
                        return null;
                      }
                    },
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text('Name'),
                  SizedBox(
                    height: 5,
                  ),
                  TextFormField(
                    controller: nameCon,
                    validator: (val) {
                      if (val == null || val.isEmpty) {
                        return 'Name is required';
                      }
                      if (val.length < 3) {
                        return 'name must be atleast 3 charecter';
                      }
                      else {
                        return null;
                      }
                    },
                    decoration: InputDecoration(
                        labelText: '  Enter Name here',
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5),
                        )),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text('Email'),
                  SizedBox(
                    height: 5,
                  ),
                  TextFormField(
                    controller: emailCon,
                    validator: (val) {
                      if (val == null || val.isEmpty) {
                        return 'Email is required';
                      }
                      if (!EmailValidator.validate(val)) {
                        return 'Please give a valid Email';
                      }
                      else {
                        return null;
                      }
                    },
                    decoration: InputDecoration(
                        labelText: '  example@gmail.com',
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5),
                        )),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text('Date of Birth'),
                  SizedBox(
                    height: 5,
                  ),
                  InkWell(
                    child: Container(
                      height: 60,
                      alignment: Alignment.centerLeft,
                      width: MediaQuery
                          .of(context)
                          .size
                          .width,
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.black45, width: 1),
                          borderRadius: BorderRadius.circular(5)
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(left: 12.0),
                        child: Text(_dob == 'Enter Date' ? 'Enter Date' : _dob,
                          style: TextStyle(fontSize: 16,
                              color: Colors.black45),),
                      ),

                    ),
                    onTap: _selectDate,
                  ),

                  SizedBox(
                    height: 10,
                  ),
                  Text('City'),
                  SizedBox(
                    height: 5,
                  ),
                  TextFormField(
                    controller: cityCon,
                    decoration: InputDecoration(
                        labelText: '  Enter City',
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5),
                        )),
                    validator: (val) {
                      if (val == null || val.isEmpty) {
                        return 'City is required';
                      }
                      else {
                        return null;
                      }
                    },
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text('Country'),
                  SizedBox(
                    height: 5,
                  ),

                  Row(
                    children: [
                      Expanded(
                        child: DropdownButtonFormField(
                          decoration: const InputDecoration(
                            contentPadding: EdgeInsets.only(left: 10,),
                            border: OutlineInputBorder(
                                borderSide: BorderSide(color: Colors.grey),
                                borderRadius: BorderRadius.all(
                                    Radius.circular(5))),
                          ),
                          hint: Text('Select a City'),
                          value: countries,
                          onChanged: (value) {
                            print(value);
                            setState(() {
                              countries = value;
                            });
                          },
                          items: provider.cityNameList
                              .map((e) =>
                              DropdownMenuItem(
                                value: e,
                                child: SizedBox(width: 200.0,
                                    child: new Text(e, style: TextStyle(
                                        overflow: TextOverflow.clip),)),
                              ))
                              .toList(),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text('Present Address'),
                  SizedBox(
                    height: 5,
                  ),
                  TextFormField(
                    controller: addressCon,
                    decoration: InputDecoration(
                        labelText: '  Enter Address',
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5),
                        )),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text('NID/Passport/Driving License'),
                  SizedBox(
                    height: 5,
                  ),
                  DropdownButtonFormField(
                    validator: (value) {
                      if (value == null) {
                        return 'Select an identification';
                      } else {
                        return null;
                      }
                    },
                    decoration: const InputDecoration(
                      contentPadding: EdgeInsets.only(left: 10),
                      border: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.grey),
                          borderRadius: BorderRadius.all(Radius.circular(5))),
                    ),
                    hint: Text('Select a type'),
                    value: types,
                    onChanged: (value) {
                      setState(() {
                        types = value;
                      });
                    },
                    items: gtypes
                        .map((e) =>
                        DropdownMenuItem(
                          child: SizedBox(child: new Text(e)),
                          value: e,
                        ))
                        .toList(),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text('Frontside Image'),
                  SizedBox(
                    height: 5,
                  ),
                  TextFormField(
                    controller: frontImgCon,

                    decoration: InputDecoration(
                        labelText: '  No file chosen',
                        isDense: true,
                        contentPadding:
                        EdgeInsets.symmetric(horizontal: 0, vertical: 0),
                        prefixIcon: Padding(
                          padding: const EdgeInsets.all(0.0),
                          child: TextButton(
                            style: TextButton.styleFrom(
                              backgroundColor: Color(0xffE9ECEF),
                              side: BorderSide(color: Colors.grey, width: 1),
                            ),
                            child: Text('Chose Image'),
                            onPressed: () async {
                              _getImage2();
                            },
                          ),
                        ),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5),
                        )),
                    validator: (val) {
                      if (_imagePath2 == null) {
                        return 'image is required';
                      }
                      else {
                        return null;
                      }
                    },
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text('Backside Image'),
                  SizedBox(
                    height: 5,
                  ),
                  TextFormField(
                    controller: backImgCon,
                    validator: (val) {
                      if (_imagePath3 == null) {
                        return 'image is required';
                      }
                      else {
                        return null;
                      }
                    },
                    decoration: InputDecoration(
                        labelText: '  No file chosen',
                        isDense: true,
                        contentPadding:
                        EdgeInsets.symmetric(horizontal: 0, vertical: 0),
                        prefixIcon: Padding(
                          padding: const EdgeInsets.all(0.0),
                          child: TextButton(
                            style: TextButton.styleFrom(
                              backgroundColor: Color(0xffE9ECEF),
                              side: BorderSide(color: Colors.grey, width: 1),
                            ),
                            child: Text('Chose Image'),
                            onPressed: () async {
                              _getImage3();
                            },
                          ),
                        ),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5),
                        )),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                      width: MediaQuery
                          .of(context)
                          .size
                          .width,
                      child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              backgroundColor: Color((0xff032D46))),
                          onPressed: () async {
                            if (_formKey.currentState!.validate()) {
                              // String imagepath1 = _file1!.path!;
                              // String imagepath2 = _file2!.path!;
                              // String imagepath3 = _file3!.path!;
                              final verifyModel = VerifyUserModel(
                                  city: cityCon.text,
                                  country: countries,
                                  dob: _dob,
                                  cardType: types,
                                  name: nameCon.text,
                                  email: emailCon.text,
                                  address: addressCon.text
                              );
                              uploadImage2(verifyModel);


                              //  UserApiCalls.verificationOfUser(verifyModel);
                              // print('verifyModel ${verifyModel.toMap()}');
                            }
                          },
                          child: Text('Submit')))
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  void _getImage1() async {
    print('object');
    final selectedImage = await ImagePicker().pickImage(
        source: _imageSource, imageQuality: 50);
    print('selectedImage $selectedImage');
    if (selectedImage != null) {
      setState(() {
        //  _file1 = File(selectedImage!.path);
        _imagePath1 = selectedImage.path;
        profileCon.text = _imagePath1 ?? '';
      });
    }
  }

  void _getImage2() async {
    final selectedImage = await ImagePicker().pickImage(
        source: _imageSource, imageQuality: 50);
    print('selectedImage $selectedImage');
    if (selectedImage != null) {
      setState(() {
        //  _file2 = File(selectedImage!.path);
        _imagePath2 = selectedImage.path;
        frontImgCon.text = _imagePath2 ?? '';
      });
    }
  }

  void _getImage3() async {
    final selectedImage = await ImagePicker().pickImage(
        source: _imageSource, imageQuality: 50);
    print('selectedImage $selectedImage');
    if (selectedImage != null) {
      setState(() {
        //  _file3 = File(selectedImage!.path);
        _imagePath3 = selectedImage.path;
        backImgCon.text = _imagePath3 ?? '';
      });
    }
  }

  void _selectDate() async {
    final selectedDate = await showDatePicker(
        context: context,
        initialDate: DateTime.now(),
        firstDate: DateTime(1950),
        lastDate: DateTime.now());
    if (selectedDate != null) {
      setState(() {
        _dob = DateFormat('dd/MM/yyyy').format(selectedDate);
      });
    }
  }

  // Future<void> uploadImage(VerifyUserModel verifyModel) async{
  //   final token= UserInfo.loginUserModel!.token;
  //   EasyLoading.show();
  //   var stream1=http.ByteStream(_file1!.openRead());
  //   var stream2=http.ByteStream(_file2!.openRead());
  //   var stream3=http.ByteStream(_file3!.openRead());
  //   stream1.cast();
  //   stream2.cast();
  //   stream3.cast();
  //   var length1=await _file1!.length();
  //   var length2=await _file2!.length();
  //   var length3=await _file3!.length();
  //   try{
  //     var uri=Uri.parse('$baseUrl${ApiEnd.verification}${UserInfo.loginUserModel!.user!.id}');
  //     var request=http.MultipartRequest('POST',uri);
  //
  //
  //     request.headers[{
  //       'Accept': 'application/json',
  //       'authorization': 'Bearer $token',
  //     }];
  //     request.fields['imagename']='Profile Images';
  //     request.fields['imagenamefront']='Front Images';
  //     request.fields['imagenameback']='Back Images';
  //     request.fields[verifyModel.toMap()];
  //
  //     var multiport1=http.MultipartFile.fromBytes(
  //         'imagename',
  //         File(_file1!.path).readAsBytesSync(),
  //         filename: _file1!.path.split("/").last
  //     );
  //     var multiport2=http.MultipartFile.fromBytes(
  //         'imagenamefront',
  //         File(_file2!.path).readAsBytesSync(),
  //         filename: _file2!.path.split("/").last
  //     );
  //     var multiport3=http.MultipartFile.fromBytes(
  //         'imagenameback',
  //         File(_file3!.path).readAsBytesSync(),
  //         filename: _file3!.path.split("/").last
  //     );
  //     request.files.addAll([multiport1,multiport2,multiport3]);
  //
  //     var response=await request.send();
  //     print('RESPONSE ${response.request}');
  //     print('RESPONSE ${response.stream.first.toString()}');
  //
  //     if(response.statusCode==200){
  //       var data =await jsonDecode(response.statusCode.toString());
  //       EasyLoading.dismiss();
  //       print('all okkk ................${data}');
  //     }
  //     else {
  //
  //       EasyLoading.dismiss();
  //       var data =await jsonDecode(response.statusCode.toString());
  //       print(response.statusCode+data);
  //     }
  //   }
  //   catch(e){
  //     print('Error ${e.toString()}');
  //   }
  // }

  Future<void> uploadImage2(VerifyUserModel verifyModel) async {
    final token = UserInfo.loginUserModel!.token;
    EasyLoading.show();

      //for multipartrequest
      var request = http.MultipartRequest('POST', Uri.parse('$baseUrl${ApiEnd.verification}${UserInfo.loginUserModel!.user!.id}'));

      //for token
      request.headers.addAll({"Authorization": "Bearer $token"});

      //for image and videos and files
      request.files.add(await http.MultipartFile.fromPath("imagename", _imagePath1!));
      request.files.add(await http.MultipartFile.fromPath("imagenamefront", _imagePath2!));
      request.files.add(await http.MultipartFile.fromPath("imagenameback", _imagePath3!));
      request.fields.addAll(verifyModel.toMap());

      //for completeing the request
      var response =await request.send();

      //for getting and decoding the response into json format
      var responsed = await http.Response.fromStream(response);
      final responseData = json.decode(responsed.body);

      if (response.statusCode==200) {
        EasyLoading.dismiss();
        print("SUCCESS");
        print(responseData);
      }
      else {
        print("ERROR");
        EasyLoading.dismiss();
        print(response.statusCode);
        print('ERR ${responseData}');
      }

  }
}
