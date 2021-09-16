import 'package:flutter/widgets.dart';

import 'package:flutter_shopping_v2/models/category-list-item.model.dart';
import 'package:flutter_shopping_v2/models/product-list-item.model.dart';
import 'package:flutter_shopping_v2/repositories/categories.repository.dart';
import 'package:flutter_shopping_v2/repositories/product.repository.dart';

class HomeBloc extends ChangeNotifier {
  final categoryRepository = new CategoryRepository();
  final productRepository = new ProductRepository();

  List<ProductListItemModel>? products = <ProductListItemModel>[];
  List<CategoryListItemModel> categories = <CategoryListItemModel>[];
  String selectedCategory = 'todos';

  HomeBloc() {
    getCategories();
    getProducts();
  }

  getCategories() {
    categoryRepository.getAll().then((data) {
      this.categories = data;
      notifyListeners();
    });
  }

  getProducts() {
    productRepository.getAll().then((data) {
      this.products = data;
      notifyListeners();
    });
  }

  getProductsByCategory() {
    productRepository.getByCategory(selectedCategory).then((data) {
      this.products = data;
      notifyListeners();
    });
  }

  changeCategory(tag) {
    selectedCategory = tag;
    products = null;
    getProductsByCategory();
    notifyListeners();
  }
}
