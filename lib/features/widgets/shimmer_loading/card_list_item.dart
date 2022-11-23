import 'package:flutter/material.dart';

class CardListItem extends StatelessWidget {
  const CardListItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return _buildImage();
  }

  Widget _buildImage() {
    return Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
          color: Color.fromARGB(255, 216, 212, 212),
          borderRadius: BorderRadius.circular(16),
        ));
  }
}
