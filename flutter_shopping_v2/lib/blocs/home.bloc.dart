import 'package:flutter_shopping_v2/models/category-list-item.model.dart';
import 'package:flutter_shopping_v2/models/product-list-item.model.dart';
import 'package:flutter_shopping_v2/repositories/categories.repository.dart';
import 'package:flutter_shopping_v2/repositories/product.repository.dart';

class HomeBloc {
  final productRepository = new ProductRepository();
  final categoryRepository = new CategoryRepository();

  late List<ProductListItemModel>? products;
  late List<CategoryListItemModel> categories;
  String selectedCategory = 'todos';

  HomeBloc() {
    getCategories();
    getProducts();
  }

  getCategories() {
    categoryRepository.getAll().then((data) {
      this.categories = data;
    });
  }

  getProducts() {
    productRepository.getAll().then((data) {
      this.products = data;
    });
  }

  getProductsByCategory() {
    productRepository.getByCategory(selectedCategory).then((data) {
      this.products = data;
    });
  }

  changeCategory(tag) {
    selectedCategory = tag;
    products = null;
    getProductsByCategory();
  }
}
