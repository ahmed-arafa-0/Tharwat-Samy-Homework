import 'package:ecommerce_app/widgets/cutome_error_widget.dart';
import 'package:flutter/material.dart';
import 'package:ecommerce_app/cubits/get_product_cubit/get_product_states.dart';
import 'package:ecommerce_app/widgets/products_gridview.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../cubits/get_product_cubit/get_product_cubit.dart';

class HomeBody extends StatelessWidget {
  const HomeBody({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<GetProductCubit, GetProductCubitStates>(
      builder: (context, state) {
        if (state is GetProductsLoadedState) {
          return ProductsGridview(products: state.products);
        } else if (state is GetProductFailurState) {
          return CustomErrorWidget(
            onPressed: () {
              BlocProvider.of<GetProductCubit>(context).getProducts();
            },
          );
        } else {
          return Center(child: CircularProgressIndicator());
        }
      },
    );
  }
}
