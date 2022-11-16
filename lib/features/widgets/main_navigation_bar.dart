import 'package:flutter/material.dart';

class MainNavigationBar extends StatefulWidget {
  final List<BottomNavigationBarItem> items;
  final NavigationDestinationLabelBehavior? labelBehavior;
  final int selectedIndex;
  final void Function(int index) onItemTap;
  final Color? backgroundColor;

  const MainNavigationBar({
    Key? key,
    required this.onItemTap,
    required this.items,
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
    return BottomNavigationBar(
      unselectedItemColor: Colors.red.shade400,
      selectedItemColor: Colors.red.shade400,
      selectedLabelStyle: null,
      backgroundColor: widget.backgroundColor,
      currentIndex: _selectedIndex,
      onTap: (int tappedIndex) {
        print('data is: ' + tappedIndex.toString());
        setState(() {
          _selectedIndex = tappedIndex;
        });
        widget.onItemTap(tappedIndex);
      },
      items: widget.items,
    );
  }
}
