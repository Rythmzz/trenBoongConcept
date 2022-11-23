import 'product_entity.dart';

class OrderDetailEntity {
  final ProductEntity product;
  int quantity;
  int price;

  OrderDetailEntity(
      {required this.product, required this.quantity, required this.price});
}
