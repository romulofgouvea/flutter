import 'package:flutter/material.dart';

const brightness = Brightness.light;
const primaryColor = const Color(0xFF2AACFF);
const accentColor = const Color(0xFFFFFFFF);
const backgroundColor = const Color(0xFFF5F5F5);

ThemeData androidTheme() {
  return ThemeData(
    brightness: brightness,
    primaryColor: primaryColor,
    accentColor: accentColor,
    backgroundColor: backgroundColor,
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
