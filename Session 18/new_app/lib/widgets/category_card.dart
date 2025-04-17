import 'package:flutter/material.dart';
import 'package:new_app/models/category_model.dart';
import 'package:new_app/views/category_view.dart';

class CategoryCard extends StatelessWidget {
  final CategoryModel category;
  const CategoryCard({
    super.key,
    required this.category,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 16.0),
      child: GestureDetector(
        onTap: () {
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (context) {
                return CategoryView(
                  catergory: category.categoryName,
                );
              },
            ),
          );
        },
        child: Container(
          height: 100,
          width: 200,
          decoration: BoxDecoration(
            color: Colors.black,
            image: DecorationImage(
              image: AssetImage(
                category.imageAssetUrl,
              ),
              fit: BoxFit.fill,
            ),
            borderRadius: BorderRadius.circular(16),
          ),
          child: Center(
            child: Text(
              category.categoryName,
              style: TextStyle(
                color: Colors.white,
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
