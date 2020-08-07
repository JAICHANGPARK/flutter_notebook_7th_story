import 'package:bottom_navy_bar/bottom_navy_bar.dart';
import 'package:flutter/material.dart';

class HomePickHomePage extends StatefulWidget {
  @override
  _HomePickHomePageState createState() => _HomePickHomePageState();
}

class _HomePickHomePageState extends State<HomePickHomePage> {
  int _pageIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
          ],
        ),
      ),
      bottomNavigationBar: BottomNavyBar(
        selectedIndex: _pageIndex,
        items: [
          BottomNavyBarItem(icon: Icon(Icons.home), title: Text("Home")),
          BottomNavyBarItem(icon: Icon(Icons.favorite_border), title: Text("Favorite")),
          BottomNavyBarItem(icon: Icon(Icons.notifications_none), title: Text("Notification")),
          BottomNavyBarItem(icon: Icon(Icons.home), title: Text("Home"))
        ], onItemSelected: (int value) {
        setState(() {
          _pageIndex = value;
        });
      },

      ),

    );
  }
}
