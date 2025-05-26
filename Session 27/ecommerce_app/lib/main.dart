import 'package:ecommerce_app/views/home_view.dart';
import 'package:flutter/material.dart';

import 'views/add_product_view.dart';
import 'views/details_view.dart';

void main() {
  runApp(const StoreApp());
}

class StoreApp extends StatelessWidget {
  const StoreApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        HomeView.id: (context) => HomeView(),
        DetailsView.id: (context) => DetailsView(),
        AddProductView.id: (context) => AddProductView(),
      },
      initialRoute: HomeView.id,
    );
  }
}
