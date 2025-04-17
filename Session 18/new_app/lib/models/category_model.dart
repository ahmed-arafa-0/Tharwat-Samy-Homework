class CategoryModel {
  final String imageAssetUrl, categoryName;

  const CategoryModel({
    required this.imageAssetUrl,
    required this.categoryName,
  });
}

const List<CategoryModel> categories = [
  CategoryModel(
    categoryName: 'Business',
    imageAssetUrl: 'assets/business.avif',
  ),
  CategoryModel(
    categoryName: 'Entertaiment',
    imageAssetUrl: 'assets/entertaiment.avif',
  ),
  CategoryModel(
    categoryName: 'General',
    imageAssetUrl: 'assets/general.avif',
  ),
  CategoryModel(
    categoryName: 'Health',
    imageAssetUrl: 'assets/health.avif',
  ),
  CategoryModel(
    categoryName: 'Science',
    imageAssetUrl: 'assets/science.avif',
  ),
  CategoryModel(
    categoryName: 'Sports',
    imageAssetUrl: 'assets/sports.avif',
  ),
  CategoryModel(
    categoryName: 'Technology',
    imageAssetUrl: 'assets/technology.jpeg',
  ),
];
