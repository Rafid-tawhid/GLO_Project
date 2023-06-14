
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

var lightBgColor = Color(0xffffffff);
var lightBgPrimaryColor = Color(0xffFFD504);
var lightBgSecondaryColor = Color(0xff2B3990);
var lightBgSecondaryColor2 = Color(0xff061596);
var lightBgThirdColor = Color(0xffF3F3F3);
var darkBlue = Color(0xff043655);
var dark = Color(0xff03273C);
var orange = Color(0xffFFD504);
var mainColor = Color(0xff00A9FF);


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