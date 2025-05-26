import 'package:ecommerce_app/models/category_model.dart';

class ProductModel {
  final String title, slug, description;
  final List<dynamic> image;
  final int id;
  final num price;
  final CategoryModel category;

  ProductModel({
    required this.title,
    required this.slug,
    required this.description,
    required this.category,
    required this.image,
    required this.id,
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
