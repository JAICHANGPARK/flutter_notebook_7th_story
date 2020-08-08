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
            //TODO: Build Appbar Widget
            Expanded(
              flex: 2,
              child: Row(
                children: [
                  Container(
                    height: 48,
                    width: 48,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(8),
                        boxShadow: [BoxShadow(color: Colors.black.withOpacity(0.2), blurRadius: 5, spreadRadius: 4)]),
                  )
                ],
              ),
            ),
            //TODO: Build Search Bar Widget
            Expanded(
              flex: 2,
              child: Placeholder(),
            ),
            //TODO: Build Tab Bar Widget
            Expanded(
              flex: 2,
              child: Placeholder(),
            ),
            //TODO: Build Page or List Widget
            Expanded(
              flex: 14,
              child: Placeholder(),
            )
          ],
        ),
      ),
      bottomNavigationBar: BottomNavyBar(
        itemCornerRadius: 8,
        selectedIndex: _pageIndex,
        items: [
          BottomNavyBarItem(
              icon: Icon(Icons.home), title: Text("Home"), activeColor: Colors.green, inactiveColor: Colors.grey),
          BottomNavyBarItem(
              icon: Icon(Icons.favorite_border),
              title: Text("Favorite"),
              activeColor: Colors.green,
              inactiveColor: Colors.grey),
          BottomNavyBarItem(
              icon: Icon(Icons.notifications_none),
              title: Text("Notification"),
              activeColor: Colors.green,
              inactiveColor: Colors.grey),
          BottomNavyBarItem(
              icon: Icon(Icons.settings), title: Text("Setting"), activeColor: Colors.green, inactiveColor: Colors.grey)
        ],
        onItemSelected: (int value) {
          setState(() {
            _pageIndex = value;
          });
        },
      ),
    );
  }
}
