import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../domain/bloc/menu/menu_bloc.dart';
import '../../../domain/bloc/menu/menu_state.dart';
import 'menu_category.dart';
import 'menu_product.dart';
import 'shimmer_category.dart';
import 'shimmer_product.dart';

class MenuHolder extends StatelessWidget {
  const MenuHolder({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(child: BlocBuilder<MenuBloc, MenuState>(
        builder: (BuildContext context, MenuState state) {
      if (state is MenuLoadSuccessState) {
        return Column(children: [
          MenuCategory(
              categories: state.products.map((e) => e.category).toList()),
          MenuProduct(categories: state.products)
        ]);
      }
      return Column(children: const [
        ShimmerCategory(),
        ShimmerProduct(),
        SizedBox(height: 120)
      ]);
    }));
  }
}
