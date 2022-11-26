import 'package:flutter/material.dart';

class PromotionDate extends StatelessWidget {
  const PromotionDate({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        child: Row(
      children: const [
        SizedBox(width: 20),
        Icon(Icons.access_time_filled_rounded),
        SizedBox(width: 8),
        Text('Khuyến mãi có hạn',
            style: TextStyle(
                fontWeight: FontWeight.w700, wordSpacing: 1.6, fontSize: 16))
      ],
    ));
  }
}
