import 'package:flutter/material.dart';

import '../pop_up/list_card.dart';
import 'pop_over.dart';

class UtilityBar extends StatefulWidget {
  UtilityBar({super.key, required this.scaffoldKey});

  GlobalKey<ScaffoldState> scaffoldKey;

  @override
  State<UtilityBar> createState() => _UtilityBarState();
}

class _UtilityBarState extends State<UtilityBar> with TickerProviderStateMixin {
  PersistentBottomSheetController? persistentBottomSheetController;
  late AnimationController controller;

  @override
  initState() {
    super.initState();
    controller = BottomSheet.createAnimationController(this);
    controller.duration = Duration(milliseconds: 500);
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    if (persistentBottomSheetController != null) {
      persistentBottomSheetController!.closed
          .then((value) => print('close ne ck'));
    }
    return Container(
      height: 60,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          IconButton(
            icon: const Icon(Icons.home),
            tooltip: ("Change card"),
            onPressed: () {
              setState(() {
                persistentBottomSheetController =
                    widget.scaffoldKey.currentState!.showBottomSheet(
                        transitionAnimationController: controller,
                        (context) => Popover(child: ListCard()));
              });
            },
          ),
          IconButton(
            tooltip: ("Orders"),
            icon: const Icon(Icons.shopping_bag), 
            onPressed: () {
              widget.scaffoldKey.currentState!
                  .showBottomSheet((context) => Popover(child: Container()));
            },
            // child: Text("Orders")
          ),
          IconButton(
            icon: const Icon(Icons.videogame_asset),
            tooltip: ("promotion"),
            onPressed: () {
              widget.scaffoldKey.currentState!
                  .showBottomSheet((context) => Container());
            },
          ),
          IconButton(
            icon: const Icon(Icons.settings),
            tooltip: ("event"),
            onPressed: () {
              setState(() {
                widget.scaffoldKey.currentState!
                    .showBottomSheet((context) => Container());
              });
            },
          ),
          // widget,
        ],
      ),
    );
  }
}
