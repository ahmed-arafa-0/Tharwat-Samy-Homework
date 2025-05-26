import 'package:ecommerce_app/cubits/get_product_cubit/get_product_states.dart';
import 'package:ecommerce_app/services/product_services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../models/product_model.dart';
// import '../../models/product_model.dart';

class GetProductCubit extends Cubit<GetProductCubitStates> {
  GetProductCubit() : super(GetProductsInitialState());

  getProducts() async {
    emit(GetProductsLoadingState());
    try {
      List<ProductModel> products = await ProductServices().getAllProducts();
      emit(GetProductsLoadedState(products: products));
    } catch (e) {
      emit(GetProductFailurState(errMessage: e.toString()));
    }
  }

  updateProduct({required ProductModel product, required int id}) async {
    emit(GetProductsLoadingState());
    try {
      await ProductServices().updateProduct(productModel: product, id: id);
      List<ProductModel> products = await ProductServices().getAllProducts();
      emit(GetProductsLoadedState(products: products));
    } catch (e) {
      emit(GetProductFailurState(errMessage: e.toString()));
    }
  }

  deleteProduct({required int id}) async {
    emit(GetProductsLoadingState());
    try {
      await ProductServices().deleteProduct(id: id);
      List<ProductModel> products = await ProductServices().getAllProducts();
      emit(GetProductsLoadedState(products: products));
    } catch (e) {
      emit(GetProductFailurState(errMessage: e.toString()));
    }
  }

  // getCubitFunProducts() async {
  //   emit(GetProductsLoadingState());
  //   try {
  //     List<ProductModel> products =
  //         await GetAllProductsServices().getAllProductus();
  //     emit(GetProductsSuccessState.ProductsSuccessState(products: products));
  //   } catch (e) {
  //     emit(GetProductsFailureState(errMessage: e.toString()));
  //   }
  // }
}
