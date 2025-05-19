import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:store_api/cubit/get_product_cubit/get_products_cubit.dart';
import 'package:store_api/widgets/home_page_body.dart';

class HomePage extends StatelessWidget {
  static const String id = 'HomePage';
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => GetProductsCubit()..getCubitFunProducts(),
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.blue,
          elevation: 0.0,
          centerTitle: true,
          title: Text('E-Commerce App', style: TextStyle(color: Colors.white)),
          actions: [
            IconButton(
              onPressed: () {},
              icon: FaIcon(FontAwesomeIcons.arrowsRotate, color: Colors.white),
            ),
          ],
        ),
        body: HomePageBody(),
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          child: Icon(Icons.add),
        ),
      ),
    );
  }
}

//
