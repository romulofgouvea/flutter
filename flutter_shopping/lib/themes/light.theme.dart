import 'package:flutter/material.dart';

const brightness = Brightness.light;
const primaryColor = const Color(0xFFFF5722);
const lightColor = const Color(0xFFFFFFFF);
const backgroundColor = const Color(0xFFF5F5F5);

const accentColor = const Color(0xFF9E9E9E);

ThemeData lightTheme() {
  return ThemeData(
    // primarySwatch: primaryColor,
    brightness: brightness,
    // textTheme: new TextTheme(
    //   body1: new TextStyle(color: Colors.red),
    //   display4: new TextStyle(fontSize: 78),
    //   button: new TextStyle(color: Colors.green),
    //   headline: new TextStyle(color: Colors.deepPurple)
    // ),
    // tabBarTheme:
    // accentIconTheme:
    // accentTextTheme:
    // appBarTheme:
    // bottomAppBarTheme:
    // buttonTheme: new ButtonThemeData(
    //   buttonColor: Colors.orange,
    //   textTheme: ButtonTextTheme.primary,
    // ),
    // cardTheme: CardTheme(
    //   elevation: 5,
    //   color: Colors.indigo,
    // ),
    // chipTheme:
    // dialogTheme:
    // floatingActionButtonTheme:
    // iconTheme:
    // inputDecorationTheme:
    // pageTransitionsTheme:
    // primaryIconTheme:
    // primaryTextTheme:
    // sliderTheme:
    primaryColor: primaryColor,
    primaryColorDark: Color.fromRGBO(230, 74, 25, 1),
    primaryColorLight: Color.fromRGBO(255, 204, 188, 1),
    accentColor: Color.fromRGBO(158, 158, 158, 1),
    // fontFamily: 'Montserrat',
    buttonColor: Color(0xFFFFFFFF),
    scaffoldBackgroundColor: backgroundColor,
    // cardColor: Colors.white,
  );
}
