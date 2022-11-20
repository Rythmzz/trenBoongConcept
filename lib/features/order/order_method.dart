import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class OrderMethod extends StatelessWidget {
  const OrderMethod({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(children: [
      Container(
        margin: EdgeInsets.only(right: 5, bottom: 4),
        height: 18,
        width: 18,
        decoration: BoxDecoration(
            image: DecorationImage(
          image: AssetImage("assets/icon/in-place-icon.png"),
          fit: BoxFit.cover,
        )),
      ),
      DefaultTextStyle(
          style: TextStyle(
              color: Color.fromARGB(255, 57, 56, 56),
              fontWeight: FontWeight.w500,
              fontSize: 12),
          child: Text('Lấy hàng tại quầy'))
    ]);
  }
}
