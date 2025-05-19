import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:store_api/models/product_model.dart';
// import 'package:store_api/views/home_page.dart';

import 'custom_text_form_field.dart';

// ignore: must_be_immutable
class UpdateProductBody extends StatelessWidget {
  final ProductModel product;
  String? title, description, image, category, price;
  UpdateProductBody({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 16.0),
      child: SingleChildScrollView(
        child: Column(
          children: [
            CustomTextFormField(
              onChanged: (data) {
                title = data;
              },
              text: product.title,
              prefixIcon: FontAwesomeIcons.box,
            ),
            CustomTextFormField(
              onChanged: (data) {
                description = data;
              },
              text: product.description,
              prefixIcon: FontAwesomeIcons.noteSticky,
            ),
            CustomTextFormField(
              onChanged: (data) {
                price = data;
              },
              text: product.price.toString(),
              prefixIcon: FontAwesomeIcons.dollarSign,
            ),
            CustomTextFormField(
              onChanged: (data) {
                image = data;
              },
              text: product.image.first,
              prefixIcon: FontAwesomeIcons.image,
            ),
            CustomTextFormField(
              onChanged: (data) {
                category = data;
              },
              text: product.category.name,
              prefixIcon: FontAwesomeIcons.boxArchive,
            ),
            ElevatedButton(
              onPressed: () async {
                // BlocProvider.of<GetProductsCubit>(
                //   context,
                // ).updateCubitFunProduct(
                //   product: product,
                //   title: title,
                //   category: category,
                //   description: description,
                //   image: image,
                //   price: price,
                // );
                // Navigator.of(context).pushReplacementNamed(HomePage.id);
              },
              child: Text('Update'),
            ),
          ],
        ),
      ),
    );
  }
}
