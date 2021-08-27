import 'package:flutter/material.dart';

import 'loading-button.widget.dart';

class Sucess extends StatelessWidget {
  var result = "";
  Function onClear;

  Sucess({
    @required this.onClear,
    @required this.result,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.all(30),
        decoration: BoxDecoration(
          color: Colors.white.withOpacity(0.8),
          borderRadius: BorderRadius.circular(40),
        ),
        child: Column(children: <Widget>[
          SizedBox(
            height: 50,
          ),
          Text(
            result,
            style: TextStyle(
              color: Theme.of(context).primaryColor,
              fontSize: 40,
              fontFamily: 'Big Shoulders Display',
            ),
          ),
          SizedBox(
            height: 20,
          ),
          LoadingButton(
            loading: false,
            func: onClear,
            text: 'CALCULAR NOVAMENTE',
            invertColors: true,
          ),
        ]));
  }
}
