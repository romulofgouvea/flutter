import 'package:flutter/material.dart';

class LoadingButton extends StatelessWidget {
  var loading = false;
  var invertColors = false;
  Function func;
  var text = 'Carregando...';

  LoadingButton({
    @required this.loading,
    @required this.invertColors,
    @required this.func,
    @required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return loading
        ? Container(
            alignment: Alignment.center,
            height: 48,
            child: CircularProgressIndicator(
              backgroundColor:
                  invertColors ? Theme.of(context).primaryColor : Colors.white,
            ),
          )
        : Container(
            margin: EdgeInsets.all(30),
            height: 40,
            width: double.infinity,
            decoration: BoxDecoration(
              color: invertColors
                  ? Theme.of(context).primaryColor
                  : Colors.white.withOpacity(0.8),
              borderRadius: BorderRadius.circular(40),
            ),
            child: TextButton(
              onPressed: func,
              style: TextButton.styleFrom(
                primary: Colors.white,
                minimumSize: Size(88, 44),
                padding: EdgeInsets.symmetric(horizontal: 16.0),
                shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(2.0)),
                ),
              ),
              child: Text(
                text,
                style: TextStyle(
                  color: invertColors
                      ? Colors.white
                      : Theme.of(context).primaryColor,
                  fontSize: 26,
                  fontFamily: 'Big Shoulders Display',
                ),
              ),
            ),
          );
  }
}
