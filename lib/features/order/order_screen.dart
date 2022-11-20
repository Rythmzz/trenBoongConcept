import 'package:flutter/material.dart';
import '../../domain/bloc/order/order_bloc.dart';
import 'confirm_bar.dart';
import 'order_detail.dart';

class OrderScreen extends StatelessWidget {
  final OrderBloc orderBloc;
  const OrderScreen({super.key, required this.orderBloc});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
        bottomNavigationBar: ConfirmBar(orderBloc: orderBloc),
        body: OrderDetail(orderBloc: orderBloc));
  }
}
