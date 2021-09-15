import 'package:dio/dio.dart';
import 'package:flutter_shopping_v2/Settings.dart';
import 'package:flutter_shopping_v2/models/category-list-item.model.dart';

class CategoryRepository {
  Future<List<CategoryListItemModel>> getAll() async {
    var url = "${Settings.baseUrl}/v1/categories";
    Response response = await Dio().get(url);
    return (response.data as List)
        .map((course) => CategoryListItemModel.fromJson(course))
        .toList();
  }
}
