import 'package:flutter/material.dart';

import 'promotion_date.dart';
import 'promotion_infor.dart';

class PromotionList extends StatelessWidget {
  const PromotionList({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 3000,
        margin: const EdgeInsets.fromLTRB(18, 0, 18, 28),
        child: Column(
          children: [
            for (var i in [10, 10, 2])
              Container(
                  margin: const EdgeInsets.only(bottom: 16),
                  height: 180,
                  decoration: BoxDecoration(
                    border: Border.all(
                        color: const Color.fromARGB(255, 146, 144, 144),
                        width: 1.0),
                    borderRadius: const BorderRadius.all(Radius.circular(15)),
                  ),
                  child: Column(
                    children: [
                      Expanded(
                          flex: 25,
                          child: PromotionInfor(
                              title: 'Giảm đến 63k cho đơn hàng',
                              details: const [
                                'Giảm 60k món ăn và 3k phí giao hàng',
                                'Đặt tối thiểu 150k'
                              ])),
                      const Divider(
                          height: 0,
                          color: Color.fromARGB(255, 84, 82, 82),
                          thickness: 0.4),
                      const Expanded(flex: 10, child: PromotionDate()),
                    ],
                  ))
          ],
        ));
  }
}
