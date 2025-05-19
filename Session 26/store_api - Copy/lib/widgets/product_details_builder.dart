import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:store_api/cubit/get_product_details_cubit.dart/get_product_details_cubit.dart';
import 'package:store_api/cubit/get_product_details_cubit.dart/get_product_details_cubit_states.dart';

class ProductDetailsBuilder extends StatelessWidget {
  const ProductDetailsBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<GetProductDetailsCubit, GetProductDetailsCubitStates>(
      listener: (context, state) {
        if (state is GetProductDetailsFailureState) {
          ScaffoldMessenger.of(
            context,
          ).showSnackBar(SnackBar(content: Text(state.errMessage)));
        }
      },
      builder: (context, state) {
        if (state is GetProductDetailsSuccessState) {
          return Text(state.product.title);
        } else if (state is GetProductDetailsInitialState) {
          return Text('Initail');
        } else if (state is GetProductDetailsLoadingState) {
          return Center(child: CircularProgressIndicator());
        } else {
          return Text(state.toString());
        }
      },
    );
  }
}
