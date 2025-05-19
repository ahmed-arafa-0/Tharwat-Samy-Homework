import 'package:store_api/models/category_model.dart';

class ProductModel {
  final int id;
  final String title, description, slug;
  final CategoryModel category;
  final List<dynamic> image;
  final num price;

  ProductModel({
    required this.id,
    required this.title,
    required this.description,
    required this.slug,
    required this.category,
    required this.image,
    required this.price,
  });

  factory ProductModel.fromJson(jsonData) {
    return ProductModel(
      id: jsonData['id'],
      title: jsonData['title'],
      description: jsonData['description'],
      slug: jsonData['slug'],
      category: CategoryModel.fromJson(jsonData['category']),
      image: jsonData['images'],
      price: jsonData['price'],
    );
  }
}
