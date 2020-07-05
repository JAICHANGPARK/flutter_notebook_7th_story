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
        onPressed: () {  },
        child: Icon(Icons.add),
      ),
      bottomNavigationBar: BottomNavigationBar(
          showSelectedLabels: false,
          showUnselectedLabels: false,
          items: [
        BottomNavigationBarItem(
          icon: Icon(Icons.apps),
          title: Text("")

        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.apps),
            title: Text("")
        )


      ]),
    );
  }
}



























