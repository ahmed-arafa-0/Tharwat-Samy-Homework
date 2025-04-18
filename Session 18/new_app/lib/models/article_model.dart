class ArticleModel {
  String? image, subtitle;
  String title, url;

  ArticleModel({
    required this.image,
    required this.title,
    required this.subtitle,
    required this.url,
  });

  factory ArticleModel.fromJson(json) {
    return ArticleModel(
      image: json["urlToImage"],
      title: json["title"],
      subtitle: json["description"],
      url: json["url"],
    );
  }
}
