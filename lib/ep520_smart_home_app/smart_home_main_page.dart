import 'package:flutter/material.dart';

class SmartHomeMainPage extends StatefulWidget {
  @override
  _SmartHomeMainPageState createState() => _SmartHomeMainPageState();
}

class _SmartHomeMainPageState extends State<SmartHomeMainPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.brown[50],
      body: Stack(
        children: [
          Positioned(
            left: 0,
            right: 0,
            top: 0,
            bottom: 100,
            child: Placeholder(),
          ),
          Positioned(
            
          )
        ],
      ),
    );
  }
}
