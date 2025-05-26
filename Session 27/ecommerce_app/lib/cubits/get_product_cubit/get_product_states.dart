import '../../models/product_model.dart';

class GetProductCubitStates {}

class GetProductsInitialState extends GetProductCubitStates {}

class GetProductsLoadingState extends GetProductCubitStates {}

class GetProductsLoadedState extends GetProductCubitStates {
  final List<ProductModel> products;

  GetProductsLoadedState({required this.products});
}

class GetProductFailurState extends GetProductCubitStates {
  final String errMessage;
  GetProductFailurState({required this.errMessage});
}
