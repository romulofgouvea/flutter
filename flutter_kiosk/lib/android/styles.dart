import 'package:flutter/material.dart';
import 'package:flutter_kiosk/constants/colors.dart';

const brightness = Brightness.light;

ThemeData androidTheme() {
  return ThemeData(
    brightness: brightness,
    primaryColor: kPrimary,
    primaryColorDark: kPrimaryDark,
    accentColor: kAccent,
    backgroundColor: kBackgorund,
    textTheme: new TextTheme(
      bodyText1: new TextStyle(
        fontFamily: 'Poppins',
      ),
      bodyText2: new TextStyle(
        fontFamily: 'Poppins',
      ),
      button: TextStyle(
        fontFamily: "Poppins",
      ),
      caption: TextStyle(
        fontFamily: "Poppins",
      ),
      overline: TextStyle(
        fontFamily: "Poppins",
      ),
    ),
  );
}
