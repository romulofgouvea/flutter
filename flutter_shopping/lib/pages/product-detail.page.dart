import 'package:flutter/material.dart';

class ProductDetail extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        color: Colors.red,
        child: Center(
          child: Text("ProductDetail"),
        ),
      ),
    );
  }
}
