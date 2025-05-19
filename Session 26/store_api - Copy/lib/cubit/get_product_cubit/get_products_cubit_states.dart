import 'package:store_api/models/product_model.dart';

class GetProductsCubitStates {}

class GetProductInitialState extends GetProductsCubitStates {}

class GetProductsSuccessState extends GetProductsCubitStates {
  final List<ProductModel> products;

  GetProductsSuccessState.ProductsSuccessState({required this.products});
}

class GetProductsFailureState extends GetProductsCubitStates {
  final String errMessage;

  GetProductsFailureState({required this.errMessage});
}

class GetProductsLoadingState extends GetProductsCubitStates {}
