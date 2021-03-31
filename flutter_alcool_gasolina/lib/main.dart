import 'package:flutter/material.dart';
import 'package:flutter_alcool_gasolina/widgets/input.widget.dart';
import 'package:flutter_alcool_gasolina/widgets/logo.widget.dart';
import 'package:flutter_masked_text/flutter_masked_text.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Alcool ou Gasolina',
      theme: ThemeData(
        primarySwatch: Colors.purple,
      ),
      home: Home(),
    );
  }
}

class Home extends StatelessWidget {
  var _alcController = new MoneyMaskedTextController();
  var _gasController = new MoneyMaskedTextController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      body: ListView(
        children: [
          Logo(),
          Input(
            label: "Valor do álcool",
            ctrl: _alcController,
          ),
          Input(
            label: "Valor da gasolina",
            ctrl: _gasController,
          ),
          Container(
            margin: EdgeInsets.all(30),
            height: 40,
            decoration: BoxDecoration(
              color: Colors.white.withOpacity(0.8),
              borderRadius: BorderRadius.circular(40),
            ),
            child: FlatButton(
              onPressed: () {},
              child: Text(
                "CALCULAR",
                style: TextStyle(
                  color: Theme.of(context).primaryColor,
                  fontSize: 26,
                  fontFamily: 'Big Shoulders Display',
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
