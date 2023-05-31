import 'package:flutter/material.dart';
import '../Home/Mentor/MHome.dart';
import '../Mentor/MCategory.dart';
import '../Mentor/AddClass.dart';
import '../Mentor/Notification.dart';
import '../Mentor/MProfile.dart';

class Nyoba extends StatefulWidget {
  @override
  _NyobaState createState() => _NyobaState();
}

class _NyobaState extends State<Nyoba> {
  int _selectedIndex = 0;

  static List<Widget> _widgetOptions = <Widget>[
    Homepage(),
    CategoryPage(),
    AddClass(),
    Progres(),
    Profile(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: _widgetOptions[_selectedIndex],
        bottomNavigationBar: BottomNavigationBar(
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.home, color: Colors.black),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.category, color: Colors.black),
              label: 'Category',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.add_circle, color: Colors.black),
              label: 'Add Class',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.notifications, color: Colors.black),
              label: 'Notifications',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.person,
                color: Colors.black,
              ),
              label: 'Profile',
            ),
          ],
          currentIndex: _selectedIndex,
          selectedItemColor: Colors.amber[800],
          onTap: _onItemTapped,
        ),
      ),
    );
  }
}
