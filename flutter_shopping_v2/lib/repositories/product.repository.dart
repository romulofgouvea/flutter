import 'package:dio/dio.dart';
import 'package:flutter_shopping_v2/Settings.dart';
import 'package:flutter_shopping_v2/models/product-details.model.dart';
import 'package:flutter_shopping_v2/models/product-list-item.model.dart';

class ProductRepository {
  Future<List<ProductListItemModel>> getAll() async {
    var url = "${Settings.baseUrl}/v1/products";
    Response response = await Dio().get(url);
    return (response.data as List)
        .map((course) => ProductListItemModel.fromJson(course))
        .toList();
  }

  Future<List<ProductListItemModel>> getByCategory(String category) async {
    var url = "${Settings.baseUrl}/v1/categories/$category/products";
    Response response = await Dio().get(url);
    return (response.data as List)
        .map((course) => ProductListItemModel.fromJson(course))
        .toList();
  }

  Future<ProductDetailsModel> get(String tag) async {
    var url = "${Settings.baseUrl}/v1/products/$tag";
    Response response = await Dio().get(url);
    return ProductDetailsModel.fromJson(response.data);
  }
}
