import 'package:flutter/material.dart';
import '../../../domain/bloc/order/order_bloc.dart';
import '../../domain/entity/order_entity.dart';

class ConfirmBar extends StatelessWidget {
  final OrderBloc orderBloc;
  const ConfirmBar({super.key, required this.orderBloc});

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.only(left: 20, right: 20, top: 10, bottom: 10),
        height: 90,
        color: Color.fromARGB(255, 247, 132, 32),
        child: Row(
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(generateTextTotalItem(orderBloc.order),
                    style: TextStyle(
                        fontSize: 18,
                        color: Colors.white,
                        fontWeight: FontWeight.w400)),
                Text(generateTotalPrice(orderBloc.order),
                    style: TextStyle(
                        height: 1.6,
                        fontSize: 18,
                        color: Colors.white,
                        fontWeight: FontWeight.w700))
              ],
            ),
            Spacer(),
            TextButton(
                onPressed: () {},
                child: Container(
                    height: 34,
                    width: 100,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.all(Radius.circular(15))),
                    child: Center(
                        child: Text('ĐẶT HÀNG',
                            style: TextStyle(
                                fontSize: 16,
                                color: Color.fromARGB(255, 202, 97, 5),
                                fontWeight: FontWeight.w700)))))
          ],
        ));
  }

  String generateTextTotalItem(OrderEntity order) {
    int total = 0;
    order.orderDetails.forEach((element) {
      total += element.quantity;
    });
    return total.toString() + ' sản phẩm';
  }

  String generateTotalPrice(OrderEntity order) {
    int total = 0;
    order.orderDetails.forEach((element) {
      total += element.totalPrice;
    });
    return total.toString() + 'đ';
  }
}
