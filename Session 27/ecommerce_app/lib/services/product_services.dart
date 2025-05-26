import '../helper/api.dart';
import '../models/product_model.dart';

class ProductServices {
  Future<List<ProductModel>> getAllProducts() async {
    List<ProductModel> productList = [];
    List<dynamic> data = await Api().get(
      url: 'https://api.escuelajs.co/api/v1/products',
    );
    for (int i = 0; i < data.length; i++) {
      productList.add(ProductModel.fromJson(data[i]));
    }
    return productList;
  }

  Future<ProductModel> createProduct({
    required ProductModel productModel,
  }) async {
    var data = await Api().post(
      url: 'https://api.escuelajs.co/api/v1/products/',
      body: {
        "title": productModel.title,
        "slug": productModel.slug,
        "price": productModel.price,
        "description": productModel.description,
        "categoryId": productModel.category.id,
        "images": productModel.image,
      },
    );

    ProductModel product = ProductModel.fromJson(data);

    return product;
  }

  Future<ProductModel> updateProduct({
    required int id,
    required ProductModel productModel,
  }) async {
    List<dynamic> data = await Api().put(
      url: 'https://api.escuelajs.co/api/v1/products/$id',
      body: {
        "title": productModel.title,
        "slug": productModel.slug,
        "price": productModel.price,
        "description": productModel.description,
        // "categoryId": num.parse(productModel.category.id),
        "images": productModel.image,
      },
    );

    ProductModel product = ProductModel.fromJson(data);

    return product;
  }

  Future<void> deleteProduct({required int id}) async {
    await Api().delete(url: 'https://api.escuelajs.co/api/v1/products/$id');
  }
}
