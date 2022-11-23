import 'order_detail_entity.dart';

class OrderEntity {
  final String userId;
  final List<OrderDetailEntity> orderDetails;
  final DateTime? dateTime;
  int totalPrice;

  OrderEntity(
      {required this.userId,
      this.dateTime,
      required this.orderDetails,
      required this.totalPrice});
}
