
import 'package:flutter/material.dart';

class FreelanceApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: FreelanceMainScreen(),
    );
  }
}

class FreelanceMainScreen extends StatefulWidget {
  @override
  _FreelanceMainScreenState createState() => _FreelanceMainScreenState();
}

class _FreelanceMainScreenState extends State<FreelanceMainScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.apps,),title: Text("Dashboard")),
          BottomNavigationBarItem(icon: Icon(Icons.apps))
        ],
      ),
      
    );
  }
}




























