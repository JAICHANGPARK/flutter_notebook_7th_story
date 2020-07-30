import 'package:flutter/material.dart';

class YogaMainPage extends StatefulWidget {
  @override
  _YogaMainPageState createState() => _YogaMainPageState();
}

class _YogaMainPageState extends State<YogaMainPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        iconTheme: IconThemeData(color: Colors.black),
      ),
      drawer: Drawer(),
      body: SingleChildScrollView(
        child: Column(
          children: [

          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        showSelectedLabels: false,
        showUnselectedLabels: false,
        selectedItemColor: Colors.grey,
        unselectedItemColor: Colors.grey,
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.calendar_today),
            title: Text("")
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.person_outline),
              title: Text("")
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.home),
              title: Text("")
          )
        ],
      ),
    );
  }
}






















