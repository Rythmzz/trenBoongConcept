import 'package:flutter/material.dart';

class OrderDetailPrice extends StatelessWidget {
  final int itemCount;
  final String totalPrice;
  const OrderDetailPrice(
      {super.key, required this.itemCount, required this.totalPrice});

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.only(top: 8, bottom: 8, left: 8, right: 8),
        height: 48,
        decoration: const BoxDecoration(
            color: Color.fromARGB(255, 237, 121, 38),
            borderRadius: BorderRadius.all(Radius.circular(24))),
        child: Row(children: [
          Container(
              margin: const EdgeInsets.only(right: 6),
              width: 25,
              height: 25,
              decoration: const BoxDecoration(
                  shape: BoxShape.circle, color: Colors.white),
              child: Center(
                  child: Text(itemCount.toString(),
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 11,
                          color: Color.fromARGB(255, 237, 121, 38))))),
          DefaultTextStyle(
              style: TextStyle(
                  fontSize: 14,
                  color: Colors.white,
                  fontWeight: FontWeight.w700),
              child: Text(totalPrice)),
          const SizedBox(width: 6),
          Icon(Icons.arrow_forward_ios_rounded, size: 12, color: Colors.white),
          const SizedBox(width: 6)
        ]));
  }
}
