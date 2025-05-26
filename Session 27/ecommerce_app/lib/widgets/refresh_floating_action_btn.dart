import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../cubits/get_product_cubit/get_product_cubit.dart';

class RefreshFloatingActionBtn extends StatelessWidget {
  const RefreshFloatingActionBtn({super.key});

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      onPressed: () {
        BlocProvider.of<GetProductCubit>(context).getProducts();
      },
      child: Icon(Icons.refresh),
    );
  }
}
