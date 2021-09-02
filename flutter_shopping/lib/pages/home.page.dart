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
          color: Colors.grey[100],
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
              Text("Categorias"),
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
              Text("Mais vendidos"),
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
