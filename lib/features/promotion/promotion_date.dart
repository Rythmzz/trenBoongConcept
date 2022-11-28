import 'package:flutter/material.dart';

class PromotionDate extends StatelessWidget {
  PromotionDate({super.key, required this.textColor});
  Color textColor;

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 45,
        child: Row(
          children: [
            SizedBox(width: 20),
            Icon(Icons.access_time_filled_rounded, color: textColor),
            SizedBox(width: 8),
            Text('Khuyến mãi có hạn',
                style: TextStyle(
                    color: textColor,
                    fontWeight: FontWeight.w700,
                    wordSpacing: 1.6,
                    fontSize: 16))
          ],
        ));
  }
}
