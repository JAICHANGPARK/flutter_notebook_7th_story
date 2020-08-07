import 'package:bottom_navy_bar/bottom_navy_bar.dart';
import 'package:flutter/material.dart';

class HomePickHomePage extends StatefulWidget {
  @override
  _HomePickHomePageState createState() => _HomePickHomePageState();
}

class _HomePickHomePageState extends State<HomePickHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [

          ],
        ),
      ),
      bottomNavigationBar: BottomNavyBar(items: [
        BottomNavyBarItem(icon: Icon(Icons.home), title: Text("Home"))
      ], onItemSelected: (int value) {

      },

      ),

    );
  }
}
