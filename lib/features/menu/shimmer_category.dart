import 'package:flutter/material.dart';
import '../widgets/shimmer_loading/circle_list_item.dart';

class ShimmerCategory extends StatelessWidget {
  const ShimmerCategory({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.count(
        childAspectRatio: 1 / 1.3,
        shrinkWrap: true,
        primary: false,
        padding: const EdgeInsets.only(top: 10, left: 20, right: 20),
        crossAxisSpacing: 25,
        mainAxisSpacing: 15,
        crossAxisCount: 4,
        children: <Widget>[
          for (var i in [1, 2, 3, 4, 5, 6, 7, 8])
            Column(children: [
              Expanded(child: CircleListItem()),
              SizedBox(height: 10)
            ])
        ]);
  }
}
