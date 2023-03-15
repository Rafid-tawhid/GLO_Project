import 'dart:convert';
import 'dart:io';
import 'dart:typed_data';
import 'package:email_validator/email_validator.dart';
import 'package:flutter/material.dart';
import 'package:glo_project/pages/home_page.dart';
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
  File? _file1;
  String? _imagePath2;
  File? _file2;
  String? _imagePath3;
  String _dob='Enter Date';
  File? _file3;
  final _formKey=GlobalKey<FormState>();
  final profileCon=TextEditingController();
  final frontImgCon=TextEditingController();
  final backImgCon=TextEditingController();
  final nameCon=TextEditingController();
  final emailCon=TextEditingController();
  final dobCon=TextEditingController();
  final cityCon=TextEditingController();
  final addressCon=TextEditingController();
  final nidCon=TextEditingController();
  // String dropdownvalue='Kabul';
  ImageSource _imageSource = ImageSource.gallery;
  late UserProvider provider;


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
    provider=Provider.of(context,listen: true);
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
                        contentPadding: EdgeInsets.symmetric(horizontal: 0, vertical: 0),
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
                    validator: (val){
                      if(_file1==null){
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
                    validator: (val){
                      if(val==null||val.isEmpty){
                        return 'Name is required';
                      }
                      if(val.length<3){
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
                    validator: (val){
                      if(val==null||val.isEmpty){
                        return 'Email is required';
                      }
                      if(!EmailValidator.validate(val)){
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
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.black45,width: 1),
                        borderRadius: BorderRadius.circular(5)
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(left: 12.0),
                        child: Text(_dob=='Enter Date'?'Enter Date':_dob,style: TextStyle(fontSize: 16,color: Colors.black45),),
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
                    validator: (val){
                      if(val==null||val.isEmpty){
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
                                borderRadius: BorderRadius.all(Radius.circular(5))),
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
                                child: SizedBox( width: 200.0, child: new Text(e,style: TextStyle(overflow: TextOverflow.clip),)),
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
                            onPressed: ()async {
                              _getImage2();
                            },
                          ),
                        ),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5),
                        )),
                    validator: (val){
                      if(_file2==null){
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
                    validator: (val){
                      if(_file3==null){
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
                            onPressed: () async{
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


                            if(_formKey.currentState!.validate()){
                              // String imagepath1 = _file1!.path!;
                              // String imagepath2 = _file2!.path!;
                              // String imagepath3 = _file3!.path!;
                              //
                              // File imagefile1 = File(imagepath1);
                              // File imagefile2 = File(imagepath2);
                              // File imagefile3 = File(imagepath3);
                              // //convert Path to File
                              // Uint8List imagebytes1 = await imagefile1.readAsBytes();
                              // Uint8List imagebytes2 = await imagefile2.readAsBytes();
                              // Uint8List imagebytes3 = await imagefile3.readAsBytes();
                              //
                              // String base64string1 = base64.encode(imagebytes1); //convert bytes to base64 string
                              // String base64string2 = base64.encode(imagebytes2); //convert bytes to base64 string
                              // String base64string3 = base64.encode(imagebytes3); //convert bytes to base64 string



                              final verifyModel=VerifyUserModel(
                                  // imageName: base64string1,
                                  // imageFront: base64string2,
                                  // imageBack: base64string3,
                                  city: cityCon.text,
                                  country: countries,
                                  dob: _dob,
                                  cardType: types,
                                  name: nameCon.text,
                                  email: emailCon.text,
                                  address: addressCon.text
                              );

                              final mimeTypeData=lookupMimeType(_file1!.path,headerBytes: [0xff,0xD8])!.split('/');
                              final imageUploadRequest=http.MultipartRequest('POST',Uri.parse('$baseUrl${ApiEnd.verification}${UserInfo.loginUserModel!.user!.id}'));

                                final file=await http.MultipartFile.fromPath('imagename',_file1!.path,);
                              imageUploadRequest.files.add(file);
                              imageUploadRequest.fields.addAll(verifyModel.toMap());

                              try{
                                final stream=await imageUploadRequest.send();
                                final response=await http.Response.fromStream(stream);
                                if(response.statusCode!=200){
                                  final data=json.decode(response.body);
                                  print('Error ${data}');
                                }
                                else {
                                  final data=json.decode(response.body);
                                  print(data);

                                }
                              }catch(e){
                                print(e);
                              }
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
    final selectedImage = await ImagePicker().pickImage(source: _imageSource);
    print('selectedImage $selectedImage');
    if (selectedImage != null) {
      setState(() {
        _file1 = File(selectedImage!.path);
        _imagePath1 = selectedImage.path;
        profileCon.text=_imagePath1??'';
      });
    }
  }

  void _getImage2() async {
    final selectedImage = await ImagePicker().pickImage(source: _imageSource);
    print('selectedImage $selectedImage');
    if (selectedImage != null) {
      setState(() {
        _file2 = File(selectedImage!.path);
        _imagePath2 = selectedImage.path;
        frontImgCon.text=_imagePath2??'';
      });
    }
  }

  void _getImage3() async {
    final selectedImage = await ImagePicker().pickImage(source: _imageSource);
    print('selectedImage $selectedImage');
    if (selectedImage != null) {
      setState(() {
        _file3 = File(selectedImage!.path);
        _imagePath3 = selectedImage.path;
        backImgCon.text=_imagePath3??'';
      });
    }
  }

  void _selectDate() async {
    final selectedDate = await showDatePicker(
        context: context,
        initialDate: DateTime.now(),
        firstDate: DateTime(1950),
        lastDate: DateTime.now());
    if(selectedDate!=null){
      setState((){
        _dob=DateFormat('dd/MM/yyyy').format(selectedDate);
      });
    }
  }
}
