import 'package:store_api/helper/api.dart';
import 'package:store_api/models/product_model.dart';

class AddProductServices {
  Future<ProductModel> addProduct({required ProductModel product}) async {
    Map<String, dynamic> data = await Api().post(
      url: 'https://fakestoreapi.com/products',
      body: {
        'title': product.title,
        'price': product.price,
        'description': product.description,
        'image': product.image,
        'category': product.category,
      },
    );
    return ProductModel.fromJson(data);
  }
}
