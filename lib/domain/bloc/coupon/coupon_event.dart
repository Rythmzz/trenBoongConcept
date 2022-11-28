import 'package:equatable/equatable.dart';

abstract class CouponEvent extends Equatable {
  @override
  List<Object?> get props => <Object?>[];
}

class GetUserCoupon extends CouponEvent {
  final String id;

  GetUserCoupon(this.id);
}

class ApplyCouponToOrder extends CouponEvent {}
