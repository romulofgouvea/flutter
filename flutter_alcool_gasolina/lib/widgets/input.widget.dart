import 'package:flutter/material.dart';
import 'package:flutter_masked_text/flutter_masked_text.dart';

class Input extends StatelessWidget {
  var label = "";
  var ctrl = new MoneyMaskedTextController();

  Input({
    @required this.label,
    @required this.ctrl,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          width: 150,
          alignment: Alignment.centerRight,
          child: Text(
            label,
            style: TextStyle(
              color: Colors.white,
              fontSize: 26,
              fontFamily: 'Big Shoulders Display',
            ),
          ),
        ),
        SizedBox(
          width: 10,
        ),
        Expanded(
          child: TextFormField(
            controller: ctrl,
            keyboardType: TextInputType.number,
            style: TextStyle(
              color: Colors.white,
              fontSize: 26,
              fontFamily: 'Big Shoulders Display',
            ),
            decoration: InputDecoration(
              border: InputBorder.none,
            ),
          ),
        )
      ],
    );
  }
}
