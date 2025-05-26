import 'package:ecommerce_app/models/category_model.dart';

import '../helper/api.dart';

class CategoryServices {
  Future<List<CategoryModel>> getAllProductus() async {
    List<CategoryModel> categoryList = [];
    List<dynamic> data = await Api().get(
      url: 'https://api.escuelajs.co/api/v1/categories',
    );
    for (int i = 0; i < data.length; i++) {
      categoryList.add(CategoryModel.fromJson(data[i]));
    }
    return categoryList;
  }
}
