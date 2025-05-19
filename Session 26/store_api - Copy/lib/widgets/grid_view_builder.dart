import 'package:flutter/material.dart';
import 'package:store_api/models/product_model.dart';

import 'product_card.dart';

class GridViewBuilder extends StatelessWidget {
  final List<ProductModel> products;
  const GridViewBuilder({super.key, required this.products});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 16.0, right: 16.0, top: 10),
      child: GridView.builder(
        itemCount: products.length,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: 0.73,
          crossAxisSpacing: 5,
          mainAxisSpacing: 10,
        ),
        clipBehavior: Clip.none,
        itemBuilder: (context, index) {
          return ProductCard(product: products[index]);
        },
      ),
    );
  }
}
