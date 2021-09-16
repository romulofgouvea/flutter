import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_shopping_v2/Settings.dart';
import 'package:flutter_shopping_v2/blocs/home.bloc.dart';
import 'package:flutter_shopping_v2/constants/colors.dart';
import 'package:flutter_shopping_v2/models/category-list-item.model.dart';
import 'package:provider/provider.dart';

class CategoryCard extends StatelessWidget {
  final CategoryListItemModel item;

  const CategoryCard({required this.item});

  @override
  Widget build(BuildContext context) {
    final HomeBloc bloc = Provider.of<HomeBloc>(context);

    return Container(
      width: 70,
      height: 70,
      padding: EdgeInsets.all(8),
      decoration: BoxDecoration(
        color: item.tag == bloc.selectedCategory
            ? kPrimary.withOpacity(0.3)
            : kPrimary,
        borderRadius: BorderRadius.all(Radius.circular(70)),
      ),
      child: TextButton(
        onPressed: () {
          bloc.changeCategory(item.tag);
        },
        child:
            Image.asset("assets/categories/${Settings.theme}/${item.tag}.png"),
      ),
    );
  }
}
