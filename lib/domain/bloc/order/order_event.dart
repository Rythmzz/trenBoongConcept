import 'package:equatable/equatable.dart';
import '../../entity/coupon_entity.dart';
import '../../entity/order_entity.dart';
import '../../entity/product_entity.dart';

abstract class OrderEvent extends Equatable {
  @override
  List<Object?> get props => <Object?>[];
}

class LoadOrderEvent extends OrderEvent {}

class AddProductItem extends OrderEvent {
  final ProductEntity product;

  AddProductItem(this.product);
}

class AddCoupon extends OrderEvent {
  final CouponEntity coupon;

  AddCoupon(this.coupon);
}

class DecreaseProductItem extends OrderEvent {}

class EmitOrder extends OrderEvent {}

class CancelOrder extends OrderEvent {}
