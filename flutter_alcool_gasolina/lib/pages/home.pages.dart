import 'package:flutter/material.dart';
import 'package:flutter_alcool_gasolina/widgets/logo.widget.dart';
import 'package:flutter_alcool_gasolina/widgets/submit-form.widget.dart';
import 'package:flutter_alcool_gasolina/widgets/success.widget.dart';
import 'package:flutter_masked_text/flutter_masked_text.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  Color _color = Colors.deepPurple;
  var _alcController = new MoneyMaskedTextController();
  var _gasController = new MoneyMaskedTextController();
  var _loading = false;
  var _completed = false;
  var _resultText = "Compensa utilizar X";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Theme.of(context).primaryColor,
        body: AnimatedContainer(
          duration: Duration(milliseconds: 1000),
          color: _color,
          child: ListView(
            children: [
              Logo(),
              _completed
                  ? Sucess(
                      result: _resultText,
                      onClear: onClear,
                    )
                  : SubmitForm(
                      gasController: _gasController,
                      alcController: _alcController,
                      onSubmit: calculate,
                      loading: _loading)
            ],
          ),
        ));
  }

  Future calculate() {
    double alc =
        double.parse(_alcController.text.replaceAll(new RegExp(r'[,.]'), '')) /
            100;

    double gas =
        double.parse(_gasController.text.replaceAll(new RegExp(r'[,.]'), '')) /
            100;

    double total = alc / gas;

    setState(() {
      _color = Colors.deepPurpleAccent;
      _completed = false;
      _loading = true;
    });

    return new Future.delayed(const Duration(seconds: 1), () {
      setState(() {
        if (total >= 0.4) {
          _resultText = "Compensa utilizar gasolina!";
        } else {
          _resultText = "Compensa utilizar álcool!";
        }
        _completed = true;
        _loading = false;
      });
    });
  }

  onClear() {
    setState(() {
      _color = Colors.deepPurple;
      _alcController = new MoneyMaskedTextController();
      _gasController = new MoneyMaskedTextController();
      _completed = false;
      _loading = false;
    });
  }
}
