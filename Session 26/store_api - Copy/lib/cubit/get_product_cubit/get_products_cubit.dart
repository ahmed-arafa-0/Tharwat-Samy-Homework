import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:store_api/cubit/get_product_cubit/get_products_cubit_states.dart';
import '../../models/product_model.dart';
import '../../services/get_all_products_services.dart';

class GetProductsCubit extends Cubit<GetProductsCubitStates> {
  GetProductsCubit() : super(GetProductInitialState());

  getCubitFunProducts() async {
    emit(GetProductsLoadingState());
    try {
      List<ProductModel> products =
          await GetAllProductsServices().getAllProductus();
      emit(GetProductsSuccessState.ProductsSuccessState(products: products));
    } catch (e) {
      emit(GetProductsFailureState(errMessage: e.toString()));
    }
  }
}
