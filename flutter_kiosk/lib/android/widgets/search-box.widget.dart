import 'package:flutter/material.dart';
import 'package:flutter_kiosk/constants/colors.dart';

class SearchBox extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Container(
          padding: EdgeInsets.symmetric(horizontal: 16.0),
          decoration: BoxDecoration(
            border: Border.all(
              color: kFontLight.withOpacity(0.3),
              width: 2,
            ),
            borderRadius: BorderRadius.circular(16),
          ),
          child: TextField(
            cursorColor: Theme.of(context).primaryColor,
            decoration: InputDecoration(
              hintText: 'Pesquisar...',
              fillColor: kFontLight.withOpacity(0.2),
              contentPadding: EdgeInsets.all(8),
              border: InputBorder.none,
              hintStyle: TextStyle(
                color: kFontLight,
              ),
            ),
          ),
        ),
        Positioned(
          right: 15,
          top: 10,
          child: Container(
            padding: EdgeInsets.all(5),
            decoration: BoxDecoration(
              color: kAccent,
              borderRadius: BorderRadius.circular(8),
            ),
            child: Icon(
              Icons.search,
              color: Colors.white,
            ),
          ),
        ),
      ],
    );
  }
}
