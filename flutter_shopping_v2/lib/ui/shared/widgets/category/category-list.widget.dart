import 'package:flutter/widgets.dart';
import 'package:flutter_shopping_v2/models/category-list-item.model.dart';
import 'package:flutter_shopping_v2/ui/shared/widgets/category/category-card.widget.dart';
import 'package:flutter_shopping_v2/ui/shared/widgets/shared/loader.widget.dart';

class CategoryList extends StatelessWidget {
  final List<CategoryListItemModel> categories;

  CategoryList({required this.categories});

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 85,
        child: Loader(
          object: categories,
          callback: list,
        ));
  }

  Widget list() {
    return ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: categories.length,
        itemBuilder: (context, index) {
          CategoryListItemModel category = categories[index];

          return Padding(
            padding: EdgeInsets.only(right: 8),
            child: CategoryCard(
              item: category,
            ),
          );
        });
  }
}
