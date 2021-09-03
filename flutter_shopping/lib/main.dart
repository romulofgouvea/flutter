import 'package:flutter/material.dart';
import 'package:flutter_shopping/pages/tabs.page.dart';
import 'package:flutter_shopping/themes/dark.theme.dart';
import 'package:flutter_shopping/themes/light.theme.dart';

void main() {
  runApp(Main());
}

class Main extends StatelessWidget {
  const Main({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Flutter SHopping",
      debugShowCheckedModeBanner: false,
      theme: lightTheme(),
      home: DefaultTabController(
        length: 3,
        child: TabsPage(),
      ),
    );
  }
}
