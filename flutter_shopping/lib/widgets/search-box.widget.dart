import 'package:flutter/material.dart';

import 'animated-input.widget.dart';

class SearchBox extends StatefulWidget {
  @override
  _SearchBoxState createState() => _SearchBoxState();
}

class _SearchBoxState extends State<SearchBox>
    with SingleTickerProviderStateMixin {
  late final AnimationController _controller;
  bool menuOpened = false;

  @override
  void initState() {
    super.initState();
    _controller = new AnimationController(
      vsync: this,
      duration: Duration(
        seconds: 1,
      ),
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        AnimatedInput(
          controller: _controller,
        ),
        TextButton(
          onPressed: () {
            !menuOpened ? _controller.forward() : _controller.reverse();
            menuOpened = !menuOpened;
          },
          child: AnimatedIcon(
            icon: AnimatedIcons.menu_close,
            progress: _controller,
            semanticLabel: 'Abrir Menu',
          ),
        ),
      ],
    );
  }
}
