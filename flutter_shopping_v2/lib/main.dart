import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:flutter_shopping_v2/blocs/home.bloc.dart';

void main() {
  runApp(AndroidApp());
}

class AndroidApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => HomeBloc()),
      ],
      child: Main(),
    );
  }
}

class Main extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Shoppingo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        body: Center(
          child: Text("Shopping"),
        ),
      ),
    );
  }
}
