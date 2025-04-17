// import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:new_app/models/article_model.dart';

class NewsServers {
  final Dio dio;
  final String apiKey = "c4270d02f43844db953767b6def8bf0e";
  // final String apiKey2 = "4270d02f43844db953767b6def8bf0e";
  final String country = "us";
  NewsServers(this.dio);
  // general
  Future<List<ArticleModel>> getNews({required String category}) async {
    try {
      Response response = await dio.get(
          'https://newsapi.org/v2/top-headlines?apiKey=$apiKey&country=$country&category=$category');
      Map<String, dynamic> jsonData = response.data;
      List<dynamic> articles = jsonData["articles"];
      List<ArticleModel> articlesList = [];
      for (var article in articles) {
        articlesList.add(
          ArticleModel.fromJson(article),
        );
        // log('Title: ${article["title"]} , subtitle: ${article["description"]} , Image: ${article["urlToImage"]}');
      }
      return articlesList;
    } catch (e) {
      return [];
    }
  }
}
