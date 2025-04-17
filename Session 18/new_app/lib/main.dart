// import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
// import 'package:new_app/services/news_servers.dart';
import 'package:new_app/views/home_view.dart';

// import 'services/news_servers.dart';

void main() {
  // NewsServers(Dio()).getNews(category: 'general');
  runApp(const NewsApp());
}

class NewsApp extends StatelessWidget {
  const NewsApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeView(),
    );
  }
}
