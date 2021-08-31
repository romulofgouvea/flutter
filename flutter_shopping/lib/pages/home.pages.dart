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
        child: ListView(
          scrollDirection: Axis.horizontal,
          children: [
            Container(
              color: Colors.green,
              child: Text('Hello World 1'),
            ),
            Text('Hello World 2'),
            Text('Hello World 3'),
            Text('Hello World 4'),
            Text('Hello World 5'),
            Text('Hello World 6'),
            Text('Hello World 7'),
            Text('Hello World 8'),
          ],
        ),
      ),
    );
  }
}
