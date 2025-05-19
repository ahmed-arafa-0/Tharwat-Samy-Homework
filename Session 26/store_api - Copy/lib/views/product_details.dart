import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:store_api/cubit/get_product_details_cubit.dart/get_product_details_cubit.dart';
import 'package:store_api/views/home_page.dart';
import 'package:store_api/widgets/product_details_builder.dart';
// import 'package:store_api/widgets/home_page_body.dart';

import '../models/product_model.dart';

class ProductDetailsView extends StatelessWidget {
  static const String id = 'ProductDetailsView';
  const ProductDetailsView({super.key});

  @override
  Widget build(BuildContext context) {
    ProductModel product =
        ModalRoute.of(context)!.settings.arguments as ProductModel;
    return BlocProvider(
      create:
          (context) =>
              GetProductDetailsCubit()..getCubitFunProducts(id: product.id),
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          leading: IconButton(
            onPressed: () {
              Navigator.of(context).pushReplacementNamed(HomePage.id);
            },
            icon: Icon(Icons.arrow_back_ios_new, color: Colors.white),
          ),
          backgroundColor: Colors.blue,
          elevation: 0.0,
          centerTitle: true,
          title: Text('Product Details', style: TextStyle(color: Colors.white)),
          actions: [
            IconButton(
              onPressed: () {},
              icon: FaIcon(FontAwesomeIcons.penToSquare, color: Colors.white),
            ),
            IconButton(
              onPressed: () {},
              icon: FaIcon(FontAwesomeIcons.trash, color: Colors.white),
            ),
          ],
        ),
        body: ProductDetailsBuilder(),
      ),
    );
  }
}

//
