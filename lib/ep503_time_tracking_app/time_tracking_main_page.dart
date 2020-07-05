import 'package:flutter/material.dart';

class TimeTrackingMainPage extends StatefulWidget {
  @override
  _TimeTrackingMainPageState createState() => _TimeTrackingMainPageState();
}

class _TimeTrackingMainPageState extends State<TimeTrackingMainPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.add),
      ),
      bottomNavigationBar: BottomNavigationBar(
          onTap: (idx) {},
          type: BottomNavigationBarType.fixed,
          showSelectedLabels: false,
          showUnselectedLabels: false,
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.apps), title: Text("")),
            BottomNavigationBarItem(icon: Icon(Icons.apps), title: Text("")),
            BottomNavigationBarItem(icon: Icon(Icons.list), title: Text("")),
            BottomNavigationBarItem(icon: Icon(Icons.tune), title: Text(""))
          ]),
    );
  }
}













