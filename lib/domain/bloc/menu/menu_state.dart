import 'package:equatable/equatable.dart';
import '../../entity/category_products_entity.dart';

abstract class MenuState extends Equatable {
  const MenuState();

  @override
  List<Object> get props => [];
}

class MenuInitialState extends MenuState {}

class MenuLoadingState extends MenuState {}

class MenuLoadSuccessState extends MenuState {
  final List<CategoryProductsEntity> products;
  const MenuLoadSuccessState(this.products);
}

class MenuLoadFailState extends MenuState {}
