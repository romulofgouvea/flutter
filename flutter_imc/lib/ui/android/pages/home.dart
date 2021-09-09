import 'package:flutter/material.dart';
import 'package:flutter_imc/blocs/imc.bloc.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  var bloc = ImcBloc();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Flutter IMC'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: ListView(
          children: <Widget>[
            TextFormField(
              controller: bloc.heightCtrl,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                labelText: 'Altura (cm)',
              ),
            ),
            TextFormField(
              controller: bloc.weightCtrl,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                labelText: 'Peso (kg)',
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              color: Colors.blue,
              child: TextButton(
                onPressed: () {
                  setState(() {
                    bloc.calculate();
                  });
                },
                child: Text(
                  "CALCULAR",
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 50,
            ),
            Text(
              bloc.result,
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 20,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
