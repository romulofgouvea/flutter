import 'package:flutter/material.dart';
import 'package:flutter_masked_text/flutter_masked_text.dart';

import 'input.widget.dart';
import 'loading-button.widget.dart';

class SubmitForm extends StatelessWidget {
  var alcController = new MoneyMaskedTextController();
  var gasController = new MoneyMaskedTextController();
  var loading = false;
  Function onSubmit;

  SubmitForm({
    @required this.gasController,
    @required this.alcController,
    @required this.onSubmit,
    @required this.loading,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.only(left: 30, right: 30),
          child: Input(
            label: "Álcool",
            ctrl: alcController,
          ),
        ),
        Padding(
          padding: EdgeInsets.only(left: 30, right: 30),
          child: Input(
            label: "Gasolina",
            ctrl: gasController,
          ),
        ),
        SizedBox(
          height: 40,
        ),
        LoadingButton(
          loading: loading,
          func: onSubmit,
          text: 'CALCULAR',
          invertColors: false,
        ),
      ],
    );
  }
}
