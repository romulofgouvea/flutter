import 'category.model.dart';

class ProductDetailsModel {
  String? id;
  String? title;
  String? tag;
  double? price;
  String? description;
  String? brand;
  List<String>? images;
  CategoryModel? category;

  ProductDetailsModel(
      {required this.id,
      required this.title,
      required this.tag,
      required this.price,
      required this.description,
      required this.brand,
      required this.images,
      required this.category});

  ProductDetailsModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    title = json['title'];
    tag = json['tag'];
    price = json['price'];
    description = json['description'];
    brand = json['brand'];
    images = json['images'].cast<String>();
    category = json['category'] != null
        ? new CategoryModel.fromJson(json['category'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['title'] = this.title;
    data['tag'] = this.tag;
    data['price'] = this.price;
    data['description'] = this.description;
    data['brand'] = this.brand;
    data['images'] = this.images;
    if (this.category != null) {
      data['category'] = this.category!.toJson();
    }
    return data;
  }
}
