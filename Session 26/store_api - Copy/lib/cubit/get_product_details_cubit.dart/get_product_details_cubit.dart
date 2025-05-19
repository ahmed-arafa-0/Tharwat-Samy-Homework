import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:store_api/cubit/get_product_cubit/get_products_cubit_states.dart';
import 'package:store_api/cubit/get_product_details_cubit.dart/get_product_details_cubit_states.dart';
import 'package:store_api/services/get_all_products_services.dart';
// import 'package:store_api/services/get_product_details_servers.dart';
import '../../models/product_model.dart';
// import '../../services/get_all_products_services.dart';

class GetProductDetailsCubit extends Cubit<GetProductDetailsCubitStates> {
  GetProductDetailsCubit() : super(GetProductDetailsInitialState());

  getCubitFunProducts({required int id}) async {
    emit(GetProductDetailsLoadingState());
    try {
      ProductModel product = await GetAllProductsServices()
          .getProductDetailsServices(id: id);
      emit(GetProductDetailsSuccessState(product: product));
    } catch (e) {
      emit(GetProductDetailsFailureState(errMessage: e.toString()));
    }
  }
}
