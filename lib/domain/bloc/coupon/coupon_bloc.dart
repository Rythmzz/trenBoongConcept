import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../infrastructure/repository/coupon_repository.dart';
import 'coupon_event.dart';
import 'coupon_state.dart';

class CouponBloc extends Bloc<CouponEvent, CouponState> {
  CouponBloc({required CouponRepository couponRepository})
      : _couponRepository = couponRepository,
        super(CouponInitialState()) {
    on<GetUserCoupon>((event, emit) async {
      emit(CouponLoadingState());
      await Future.delayed(const Duration(seconds: 1));
      try {
        var coupons = _couponRepository.fetchCouponsByUser(event.id);
        emit(CouponLoadSuccess(coupons));
      } catch (e) {
        emit(CouponLoadFailed());
      }
    });
  }

  final CouponRepository _couponRepository;
}
