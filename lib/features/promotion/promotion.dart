import 'package:flutter/material.dart';
import 'notification_area.dart';
import 'promotion_list.dart';

class PromotionPopup extends StatelessWidget {
  const PromotionPopup({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: SingleChildScrollView(
            child: Column(
      children: const [NotificationArea(), PromotionList()],
    )));
  }
}
