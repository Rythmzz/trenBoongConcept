import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../domain/bloc/menu/menu_bloc.dart';
import '../../domain/bloc/menu/menu_event.dart';
import '../../infrastructure/repository/product_repository.dart';
import '../menu/menu_holder.dart';

class MenuPopup extends StatefulWidget {
  const MenuPopup({super.key});

  @override
  State<MenuPopup> createState() => MenuPopupState();
}

class MenuPopupState extends State<MenuPopup> {
  @override
  Widget build(BuildContext context) {
    return RepositoryProvider<ProductRepository>(
        create: (context) => ProductRepository(),
        child: BlocProvider(
            create: (context) =>
                MenuBloc(productRepository: context.read<ProductRepository>())
                  ..add(LoadMenuEvent()),
            child: Expanded(child: MenuHolder())));
  }
}
