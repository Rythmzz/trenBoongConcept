import 'coupon_entity.dart';
import 'order_detail_entity.dart';

class OrderEntity {
  final String userId;
  final List<OrderDetailEntity> orderDetails;
  final DateTime? dateTime;
  CouponEntity? coupon;
  int totalPrice;

  OrderEntity(
      {required this.userId,
      this.dateTime,
      this.coupon,
      required this.orderDetails,
      required this.totalPrice});
}
