import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:new_app/models/article_model.dart';
import 'package:new_app/widgets/error_text.dart';
import 'package:new_app/widgets/loading_indicator.dart';
import 'package:new_app/widgets/news_list_view.dart';
import '../services/news_servers.dart';

class NewsListViewBuilder extends StatefulWidget {
  final String catergory;
  const NewsListViewBuilder({super.key, required this.catergory});

  @override
  State<NewsListViewBuilder> createState() => _NewsListViewBuilderState();
}

class _NewsListViewBuilderState extends State<NewsListViewBuilder> {
  var futureData;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    futureData = NewsServers(Dio()).getNews(category: widget.catergory);
  }

  // cashed network image
  // gorouter
  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<ArticleModel>>(
      future: futureData,
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          return NewsListView(articles: snapshot.data!);
        } else if (snapshot.hasError) {
          return ErrorText();
        } else {
          return LoadingIndicator();
        }
      },
    );
  }
}
