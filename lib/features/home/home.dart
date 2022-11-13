import 'package:flutter/material.dart';

import '../widgets/main_navigation_bar.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('tren boong'),
      ),
      bottomNavigationBar: MainNavigationBar(
        backgroundColor: Colors.blue.shade50,
        onItemTap: (int tappedIndex) {
          print('Tapped index: $tappedIndex');
        },
        destinations: const [
          NavigationDestination(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          NavigationDestination(
            icon: Icon(Icons.settings),
            label: 'Settings',
          ),
        ],
      ),
    );
  }
}
