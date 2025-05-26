import 'package:flutter_bloc/flutter_bloc.dart';
import '../../models/product_model.dart';
import '../../services/product_services.dart';
import 'add_product_states.dart';

class AddProductCubit extends Cubit<AddProductCubitState> {
  AddProductCubit() : super(AddProductCubitInitial());

  addProduct({required ProductModel product}) async {
    emit(AddProductsLoadingState());
    try {
      await ProductServices().createProduct(productModel: product);
      // List<ProductModel> products = await ProductServices().getAllProducts();
      emit(AddProductsSuccessState());
    } catch (e) {
      emit(AddProductFailurState(errMessage: e.toString()));
    }
  }
}
