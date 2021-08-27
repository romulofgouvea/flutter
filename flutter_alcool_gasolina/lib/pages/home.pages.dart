import 'package:flutter/material.dart';
import 'package:flutter_alcool_gasolina/widgets/logo.widget.dart';
import 'package:flutter_alcool_gasolina/widgets/submit-form.widget.dart';
import 'package:flutter_masked_text/flutter_masked_text.dart';

class HomePage extends StatelessWidget {
  var _alcController = new MoneyMaskedTextController();
  var _gasController = new MoneyMaskedTextController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      body: ListView(
        children: [
          Logo(),
          // Sucess(
          //   result: "",
          //   onClear: () => {},
          // ),
          SubmitForm(
              gasController: _gasController,
              alcController: _alcController,
              onSubmit: () {},
              loading: false)
        ],
      ),
    );
  }
}
