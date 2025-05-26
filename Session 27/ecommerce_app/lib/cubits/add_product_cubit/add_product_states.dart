class AddProductCubitState {}

class AddProductCubitInitial extends AddProductCubitState {}

class AddProductsLoadingState extends AddProductCubitState {}

class AddProductsSuccessState extends AddProductCubitState {
  // final List<ProductModel> products;

  // GetProductsLoadedState({required this.products});
}

class AddProductFailurState extends AddProductCubitState {
  final String errMessage;
  AddProductFailurState({required this.errMessage});
}
