import 'package:ecommerce_app/views/add_product_view.dart';
import 'package:ecommerce_app/widgets/home_body.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../cubits/get_product_cubit/get_product_cubit.dart';
import '../widgets/refresh_floating_action_btn.dart';

class HomeView extends StatelessWidget {
  static const String id = 'HomeView';
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => GetProductCubit()..getProducts(),
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          title: Text('E-Commerce'),
          backgroundColor: Colors.white,
          actions: [
            IconButton(
              onPressed: () {
                Navigator.of(context).pushNamed(AddProductView.id);
              },
              icon: Icon(Icons.add, color: Colors.black),
            ),
          ],
        ),
        body: HomeBody(),
        floatingActionButton: RefreshFloatingActionBtn(),
      ),
    );
  }
}
