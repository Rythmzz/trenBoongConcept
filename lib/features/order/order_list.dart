import 'package:flutter/material.dart';

class OrderList extends StatelessWidget {
  final String orderList;
  const OrderList({super.key, required this.orderList});

  @override
  Widget build(BuildContext context) {
    return DefaultTextStyle(
        style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.w700,
            fontSize: 14,
            letterSpacing: -0.2,
            wordSpacing: -0.4),
        child: Text(orderList, overflow: TextOverflow.ellipsis));
  }
}
