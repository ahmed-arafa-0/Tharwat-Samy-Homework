import 'package:store_api/helper/api.dart';
import 'package:store_api/models/product_model.dart';

class UpdateProductServices {
  Future<ProductModel> updateProduct({required ProductModel product}) async {
    Map<String, dynamic> data = await Api().put(
      url: 'https://fakestoreapi.com/products/${product.id}',
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
