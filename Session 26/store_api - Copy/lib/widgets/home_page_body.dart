import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:store_api/cubit/get_product_cubit/get_products_cubit.dart';
import 'package:store_api/cubit/get_product_cubit/get_products_cubit_states.dart';
import 'package:store_api/widgets/grid_view_builder.dart';

class HomePageBody extends StatelessWidget {
  const HomePageBody({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<GetProductsCubit, GetProductsCubitStates>(
      listener: (context, state) {
        if (state is GetProductsFailureState) {
          ScaffoldMessenger.of(
            context,
          ).showSnackBar(SnackBar(content: Text(state.errMessage)));
        }
      },
      builder: (context, state) {
        if (state is GetProductsSuccessState) {
          return GridViewBuilder(products: state.products);
        } else if (state is GetProductsFailureState) {
          return Center(child: Text('Error!'));
        } else {
          return Center(child: CircularProgressIndicator());
        }
      },
    );
  }
}
