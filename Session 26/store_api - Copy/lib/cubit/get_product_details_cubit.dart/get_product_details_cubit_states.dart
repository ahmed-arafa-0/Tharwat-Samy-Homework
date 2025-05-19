import 'package:store_api/models/product_model.dart';

class GetProductDetailsCubitStates {}

class GetProductDetailsInitialState extends GetProductDetailsCubitStates {}

class GetProductDetailsSuccessState extends GetProductDetailsCubitStates {
  final ProductModel product;

  GetProductDetailsSuccessState({required this.product});
}

class GetProductDetailsFailureState extends GetProductDetailsCubitStates {
  final String errMessage;

  GetProductDetailsFailureState({required this.errMessage});
}

class GetProductDetailsLoadingState extends GetProductDetailsCubitStates {}
