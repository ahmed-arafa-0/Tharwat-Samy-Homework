import 'package:flutter/material.dart';
import 'package:new_app/widgets/news_list_view_builder.dart';

class CategoryView extends StatelessWidget {
  final String catergory;
  const CategoryView({
    super.key,
    required this.catergory,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        centerTitle: true,
        title: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              "News",
              style: TextStyle(
                color: Colors.black,
              ),
            ),
            Text(
              "Cloud",
              style: TextStyle(
                color: Colors.orange,
              ),
            ),
          ],
        ),
      ),
      body: SafeArea(
        child: CustomScrollView(
          slivers: [
            NewsListViewBuilder(
              catergory: catergory,
            ),
          ],
        ),
      ),
    );
  }
}
