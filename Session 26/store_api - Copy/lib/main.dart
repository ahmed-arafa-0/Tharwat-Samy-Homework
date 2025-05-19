import 'package:flutter/material.dart';
import 'package:store_api/views/home_page.dart';
import 'package:store_api/views/product_details.dart';

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
        HomePage.id: (context) => HomePage(),
        ProductDetailsView.id: (context) => ProductDetailsView(),
      },
      initialRoute: HomePage.id,
    );
  }
}
