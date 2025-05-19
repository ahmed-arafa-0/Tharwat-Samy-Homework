import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';
import 'package:store_api/cubit/get_product_cubit/get_products_cubit.dart';
import 'package:store_api/cubit/get_product_cubit/get_products_cubit_states.dart';
import 'package:store_api/models/product_model.dart';
import 'package:store_api/views/home_page.dart';
import 'package:store_api/widgets/update_product_body.dart';

// ignore: must_be_immutable
class UpdateProductView extends StatelessWidget {
  static const String id = 'UpdateProductView';
  const UpdateProductView({super.key});

  @override
  Widget build(BuildContext context) {
    ProductModel product =
        ModalRoute.of(context)!.settings.arguments as ProductModel;
    return BlocProvider(
      create: (context) => GetProductsCubit(),
      child: BlocConsumer<GetProductsCubit, GetProductsCubitStates>(
        listener: (context, state) {
          if (state is GetProductsFailureState) {
            ScaffoldMessenger.of(
              context,
            ).showSnackBar(SnackBar(content: Text(state.errMessage)));
          }
          // if (state is UpdateProductSucessState) {
          //   ScaffoldMessenger.of(
          //     context,
          //   ).showSnackBar(SnackBar(content: Text('Updated Successfully')));
          // }
        },
        builder: (context, state) {
          return ModalProgressHUD(
            inAsyncCall: state is GetProductsLoadingState,
            child: Scaffold(
              backgroundColor: Colors.white,
              appBar: AppBar(
                backgroundColor: Colors.white,
                elevation: 0.0,
                centerTitle: true,
                title: Text(
                  'Update Product',
                  style: TextStyle(color: Colors.black),
                ),
                leading: IconButton(
                  onPressed: () {
                    Navigator.pushReplacementNamed(context, HomePage.id);
                  },
                  icon: FaIcon(
                    Icons.arrow_back_ios_new_outlined,
                    color: Colors.black,
                  ),
                ),
              ),
              body: UpdateProductBody(product: product),
            ),
          );
        },
      ),
    );
  }
}
