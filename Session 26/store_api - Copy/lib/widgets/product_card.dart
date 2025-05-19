import 'package:flutter/material.dart';
import 'package:store_api/models/product_model.dart';
import 'package:store_api/views/product_details.dart';
// import 'package:store_api/views/update_product_view.dart';

class ProductCard extends StatelessWidget {
  final ProductModel product;
  const ProductCard({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pushReplacementNamed(
          context,
          ProductDetailsView.id,
          arguments: product,
        );
      },
      child: Stack(
        children: [
          Card(
            // color: Colors.white,
            child: Padding(
              padding: const EdgeInsets.only(left: 8.0, right: 8.0, bottom: 15),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.start,
                // mainAxisSize: MainAxisSize.min,
                children: [
                  Image.network(product.image[0]),
                  SizedBox(height: 20),
                  Text(
                    product.title,
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                    // maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    // softWrap: true,
                  ),
                  Text(
                    "\$${product.price}",
                    style: TextStyle(
                      color: Colors.blue,
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            top: 5,
            right: 5,
            child: IconButton(
              onPressed: () {},
              icon: Icon(Icons.remove_circle, color: Colors.red),
            ),
          ),
        ],
      ),
    );
  }
}
