import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:flutter_shopping_v2/blocs/home.bloc.dart';
import 'package:flutter_shopping_v2/ui/android/pages/home.page.dart';

class AndroidApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => HomeBloc()),
      ],
      child: Main(),
    );
  }
}

class Main extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final HomeBloc bloc = Provider.of<HomeBloc>(context);

    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Shopping v2',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: HomePage());
  }
}
