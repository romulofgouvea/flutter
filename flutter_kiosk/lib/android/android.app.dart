import 'package:flutter/material.dart';
import 'package:flutter_kiosk/android/styles.dart';
import 'package:flutter_kiosk/android/views/home.view.dart';

class AndroidApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Contacts',
        theme: androidTheme(),
        home: HomeView());
  }
}
