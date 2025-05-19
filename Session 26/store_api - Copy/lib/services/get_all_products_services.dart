import 'package:store_api/helper/api.dart';
import 'package:store_api/models/product_model.dart';

class GetAllProductsServices {
  Future<List<ProductModel>> getAllProductus() async {
    List<ProductModel> productList = [];
    // print('Get All Products Entered Function');
    List<dynamic> data = await Api().get(
      url: 'https://api.escuelajs.co/api/v1/products',
    );

    // print('Get All Products Data came');
    for (int i = 0; i < data.length; i++) {
      // print('data of index $i => ${data[i]}');
      productList.add(ProductModel.fromJson(data[i]));
    }

    // print('Get All Products return Function');
    return productList;
  }

  Future<ProductModel> getProductDetailsServices({required int id}) async {
    List<dynamic> data = await Api().get(
      url: 'https://api.escuelajs.co/api/v1/products/$id',
    );

    ProductModel product = ProductModel.fromJson(data);

    return product;
  }
}
