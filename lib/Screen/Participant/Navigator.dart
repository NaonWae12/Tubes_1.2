import 'package:flutter/material.dart';
import '../Home/Participant/homeV2.dart';
import '../Participant/CategoryPage.dart';
import '../Participant/ChartPage.dart';
import '../Participant/PageProgres.dart';
import '../Participant/ProfilePage.dart';

class Nyoba extends StatefulWidget {
  @override
  _NyobaState createState() => _NyobaState();
}

class _NyobaState extends State<Nyoba> {
  int _selectedIndex = 0;

  static List<Widget> _widgetOptions = <Widget>[
    Homepage(),
    CategoryPage(),
    ChartPage(),
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
              icon: Icon(Icons.shopping_cart, color: Colors.black),
              label: 'Cart',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.book, color: Colors.black),
              label: 'Progres',
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
