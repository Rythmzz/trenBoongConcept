import 'order_detail_entity.dart';

class OrderEntity {
  final List<OrderDetailEntity> orderDetails;
  final DateTime? dateTime;
  final int totalPrice;

  OrderEntity(
      {this.dateTime, required this.orderDetails, required this.totalPrice});
}
