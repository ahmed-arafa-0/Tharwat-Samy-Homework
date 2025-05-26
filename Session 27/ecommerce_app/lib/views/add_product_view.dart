import 'package:ecommerce_app/cubits/add_product_cubit/add_product_cubit.dart';
import 'package:ecommerce_app/cubits/add_product_cubit/add_product_states.dart';
import 'package:ecommerce_app/cubits/get_product_cubit/get_product_states.dart';
import 'package:ecommerce_app/models/category_model.dart';
import 'package:ecommerce_app/models/product_model.dart';
import 'package:ecommerce_app/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../cubits/add_product_cubit/add_product_cubit.dart';
import '../services/product_services.dart';

class AddProductView extends StatelessWidget {
  static const String id = 'AddProductView';

  const AddProductView({super.key});

  @override
  Widget build(BuildContext context) {
    String? title, description, price;
    return BlocProvider(
      create: (context) => AddProductCubit(),
      child: Scaffold(
        appBar: AppBar(title: Text('Add Product'), centerTitle: true),
        body: BlocConsumer<AddProductCubit, AddProductCubitState>(
          listener: (context, state) {
            if (state is AddProductFailurState) {
              ScaffoldMessenger.of(
                context,
              ).showSnackBar(SnackBar(content: Text(state.errMessage)));
            }
          },
          builder: (context, state) {
            return SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  children: [
                    CustomTextFormField(
                      text: "title",
                      onChanged: (value) {
                        title = value;
                      },
                    ),

                    CustomTextFormField(
                      text: "description",
                      onChanged: (value) {
                        description = value;
                      },
                    ),
                    CustomTextFormField(
                      text: "price",
                      textInputType: TextInputType.number,
                      onChanged: (value) {
                        price = value;
                      },
                    ),

                    ElevatedButton(
                      onPressed: () async {
                        await ProductServices().createProduct(
                          productModel: ProductModel(
                            title: 'title of the teeesseeett ptroductt',
                            slug: 'title sluuuuggg',
                            description: "Desccccrrrriiippp",
                            category: CategoryModel(
                              id: 1,
                              name: 'name',
                              slug: 'slug',
                              image: 'image',
                            ),
                            image: ["https://placehold.co/600x400"],
                            id: 0,
                            price: 1500,
                          ),
                        );
                        // BlocProvider.of<AddProductCubit>(context).addProduct(
                        //   product: ProductModel(
                        //     title: title ?? '',
                        //     slug: "",
                        //     description: description ?? "",
                        //     category: CategoryModel(
                        //       id: 1,
                        //       name: 'name',
                        //       slug: 'slug',
                        //       image: 'image',
                        //     ),
                        //     image: ["https://placehold.co/600x400"],
                        //     id: 0,
                        //     price: num.parse(price ?? '0'),
                        //   ),
                        // );
                      },
                      child: Text('Add Product'),
                    ),
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
