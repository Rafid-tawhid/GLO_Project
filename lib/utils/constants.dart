
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

var lightBgColor = const Color(0xffffffff);
var lightBgPrimaryColor = const Color(0xffFFD504);
var lightBgSecondaryColor = const Color(0xff2B3990);
var lightBgSecondaryColor2 = const Color(0xff061596);
var lightBgThirdColor = const Color(0xffF3F3F3);
var darkBlue = const Color(0xff043655);
var dark = const Color(0xff03273C);
var orange = const Color(0xffFFD504);
var mainColor = const Color(0xff00A9FF);
var grey = const Color(0xff8D8B8B);
var lightBlue = const Color(0xffEEF4FB);
var lightPurple = const Color(0xffF4EFF9);
var lightOrange = const Color(0xffF9F5EC);
var deeporange = const Color(0xffFAA202);
var purple = const Color(0xff9B30FF);


var darkBgColor = Color(0xffffffff);
var darkBgPrimaryColor = Color(0xFF303030);
var darkBgSecondaryColor = Color(0xFF303030);

myStyle(double size, [Color? clr, FontWeight? fw,]) {
  return GoogleFonts.nunito(
    fontSize: size,
    color: clr,
    fontWeight: fw,
  );
}


// class GlobalFunction {
//   static void showSnackBar(BuildContext context, String message) {
//     Scaffold.of(context).showSnackBar(
//       SnackBar(
//         content: Text(message),
//       ),
//     );
//   }
// }

final List<String> cityName=['Dhaka','Bangladesh','India','Pakistan'];
final List<String> gtypes=['NID','Passport','Driving License'];