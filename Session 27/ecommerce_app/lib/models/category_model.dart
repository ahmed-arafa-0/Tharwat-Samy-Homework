class CategoryModel {
  final int id;
  final String name, slug, image;

  CategoryModel({
    required this.id,
    required this.name,
    required this.slug,
    required this.image,
  });

  factory CategoryModel.fromJson(jsonData) {
    return CategoryModel(
      id: jsonData["id"],
      name: jsonData['name'],
      image: jsonData["image"],
      slug: jsonData['slug'],
    );
  }
}
