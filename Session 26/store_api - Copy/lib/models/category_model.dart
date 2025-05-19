class CategoryModel {
  final int id;
  final String name, image, slug;

  CategoryModel({
    required this.id,
    required this.name,
    required this.image,
    required this.slug,
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
