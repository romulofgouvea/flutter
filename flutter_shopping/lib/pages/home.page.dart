import 'package:flutter/material.dart';
import 'package:flutter_shopping/widgets/category/category-list.widget.dart';
import 'package:flutter_shopping/widgets/product/product-list.widget.dart';
import 'package:flutter_shopping/widgets/search-box.widget.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              SizedBox(
                height: 24,
              ),
              SearchBox(),
              SizedBox(
                height: 24,
              ),
              Text(
                "Categorias",
                style: Theme.of(context).textTheme.headline5,
              ),
              SizedBox(
                height: 24,
              ),
              Container(
                height: 90,
                child: CategoryList(),
              ),
              SizedBox(
                height: 24,
              ),
              Text(
                "Mais vendidos",
                style: Theme.of(context).textTheme.headline5,
              ),
              Container(
                height: 350,
                child: ProductList(scrollDirection: Axis.horizontal),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
