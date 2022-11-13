import 'package:flutter/material.dart';

class MainNavigationBar extends StatefulWidget {
  final List<NavigationDestination> destinations;
  final NavigationDestinationLabelBehavior? labelBehavior;
  final int selectedIndex;
  final void Function(int index) onItemTap;
  final Color? backgroundColor;

  const MainNavigationBar({
    Key? key,
    required this.onItemTap,
    required this.destinations,
    this.selectedIndex = 0,
    this.backgroundColor,
    this.labelBehavior,
  }) : super(key: key);

  @override
  State<MainNavigationBar> createState() => _MainNavigationBar();
}

class _MainNavigationBar extends State<MainNavigationBar> {
  late int _selectedIndex;

  @override
  void initState() {
    super.initState();

    _selectedIndex = widget.selectedIndex;
  }

  @override
  Widget build(BuildContext context) {
    return NavigationBar(
      labelBehavior: widget.labelBehavior,
      backgroundColor: widget.backgroundColor,
      selectedIndex: _selectedIndex,
      onDestinationSelected: (int tappedIndex) {
        setState(() {
          _selectedIndex = tappedIndex;
        });

        widget.onItemTap(tappedIndex);
      },
      destinations: widget.destinations,
    );
  }
}
