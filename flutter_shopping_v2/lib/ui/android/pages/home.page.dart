import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:flutter_shopping_v2/blocs/home.bloc.dart';
import 'package:flutter_shopping_v2/ui/shared/widgets/category/category-list.widget.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final HomeBloc bloc = Provider.of<HomeBloc>(context);

    return Scaffold(
      body: Padding(
        padding: EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            CategoryList(categories: bloc.categories),
          ],
        ),
      ),
    );
  }
}
