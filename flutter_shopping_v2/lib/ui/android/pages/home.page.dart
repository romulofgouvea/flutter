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
        padding: EdgeInsets.only(right: 0, left: 0, top: 24, bottom: 8),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            SizedBox(
              height: 16,
            ),
            Padding(
              padding: const EdgeInsets.all(16),
              child: Text('Categorias',
                  style: Theme.of(context).textTheme.headline5),
            ),
            CategoryList(categories: bloc.categories),
            SizedBox(
              height: 16,
            ),
          ],
        ),
      ),
    );
  }
}
