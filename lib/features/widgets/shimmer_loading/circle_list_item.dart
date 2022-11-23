import 'package:flutter/material.dart';

class CircleListItem extends StatelessWidget {
  const CircleListItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        width: 65,
        height: 65,
        decoration: const BoxDecoration(
          color: Color.fromARGB(255, 201, 197, 197),
          shape: BoxShape.circle,
        ));
  }
}
