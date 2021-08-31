import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Shopping'),
      ),
      body: Container(
        height: double.infinity,
        color: Colors.red,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              color: Colors.green,
              child: Text('Hello World 1'),
            ),
            Text('Hello World 2'),
            Text('Hello World 3'),
            Text('Hello World 4'),
          ],
        ),
      ),
    );
  }
}
