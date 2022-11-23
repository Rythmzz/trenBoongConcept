import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../domain/bloc/order/order_bloc.dart';
import '../../domain/bloc/order/order_state.dart';
import 'order_fail.dart';
import 'order_success.dart';

class OrderResult extends StatefulWidget {
  final OrderBloc orderBloc;
  const OrderResult({super.key, required this.orderBloc});

  @override
  State<OrderResult> createState() => OrderResultState();
}

late Color themeColor;

class OrderResultState extends State<OrderResult> {
  double screenWidth = 600;
  double screenHeight = 400;
  Color textColor = const Color(0xFF32567A);

  @override
  Widget build(BuildContext context) {
    screenWidth = MediaQuery.of(context).size.width;
    screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      body: Center(
          child: BlocProvider.value(
              value: widget.orderBloc,
              child: BlocBuilder<OrderBloc, OrderState>(
                  builder: (BuildContext context, OrderState state) {
                if (state is OrderSuccessState) {
                  themeColor = Color(0xFF43D19E);
                  return OrderSuccess(
                      screenHeight: screenHeight, screenWidth: screenWidth);
                }
                if (state is OrderFailState) {
                  themeColor = Colors.red.shade300;
                  return OrderFail(
                      screenHeight: screenHeight, screenWidth: screenWidth);
                }
                return CircularProgressIndicator();
              }))),
    );
  }
}
