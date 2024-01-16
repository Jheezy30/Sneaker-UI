import'package:flutter/material.dart';
class MyBottomNavigationBar extends StatefulWidget {
  @override
  _MyBottomNavigationBarState createState() => _MyBottomNavigationBarState();
}

class _MyBottomNavigationBarState extends State<MyBottomNavigationBar> {
  int _currentIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _currentIndex = index;
    });

    // Handle navigation to different screens based on index
    // Implement your logic here
    print('Item tapped: $index');
  }

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      backgroundColor: Colors.white,
      fixedColor: Colors.white,
      currentIndex: _currentIndex,
      selectedIconTheme: IconThemeData(color: Colors.orange),
      unselectedIconTheme: IconThemeData(color: Colors.grey),
      onTap: _onItemTapped,
      items: [
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          label: 'Home',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.favorite),
          label: 'Favorite',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.shopping_bag),
          label: 'Shopping Bag',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.gif_box),
          label: 'Gif Box',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.person),
          label: 'Person',
        ),
      ],
    );
  }
}