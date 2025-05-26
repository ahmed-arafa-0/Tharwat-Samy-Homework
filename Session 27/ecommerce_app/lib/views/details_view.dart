import 'package:ecommerce_app/cubits/get_product_cubit/get_product_states.dart';
import 'package:ecommerce_app/models/product_model.dart';
import 'package:ecommerce_app/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../cubits/get_product_cubit/get_product_cubit.dart';

class DetailsView extends StatelessWidget {
  static const String id = 'DetailsView';

  const DetailsView({super.key});

  @override
  Widget build(BuildContext context) {
    String? title, slug, description, category;
    num? price;
    ProductModel product =
        ModalRoute.of(context)!.settings.arguments as ProductModel;
    return BlocProvider(
      create: (context) => GetProductCubit(),
      child: Scaffold(
        appBar: AppBar(title: Text('Update Product'), centerTitle: true),
        body: BlocConsumer<GetProductCubit, GetProductCubitStates>(
          listener: (context, state) {
            if (state is GetProductFailurState) {
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
                      text: product.title,
                      onChanged: (value) {
                        title = value;
                      },
                    ),
                    CustomTextFormField(
                      text: product.slug,
                      onChanged: (value) {
                        slug = value;
                      },
                    ),
                    CustomTextFormField(
                      text: product.description,
                      onChanged: (value) {
                        description = value;
                      },
                    ),
                    CustomTextFormField(
                      text: product.price.toString(),
                      onChanged: (value) {
                        price = num.parse(value);
                      },
                    ),
                    CustomTextFormField(
                      text: product.category.id.toString(),
                      onChanged: (value) {
                        category = value;
                      },
                    ),
                    ElevatedButton(
                      onPressed: () {
                        BlocProvider.of<GetProductCubit>(context).updateProduct(
                          id: product.id,
                          product: ProductModel(
                            title: title ?? product.title,
                            slug: slug ?? product.slug,
                            description: description ?? product.description,
                            category: product.category,
                            image: product.image,
                            id: product.id,
                            price: product.price,
                          ),
                        );
                      },
                      child: Text('Update'),
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
