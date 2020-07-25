
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
      floatingActionButton: FloatingActionButton(
        onPressed: () {  },
        child: Icon(Icons.search),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.dashboard,),title: Text("Dashboard")),
          BottomNavigationBarItem(icon: Icon(Icons.credit_card,),title: Text("Earning")),
          BottomNavigationBarItem(icon: Icon(Icons.bar_chart,),title: Text("Statistic")),
          BottomNavigationBarItem(icon: Icon(Icons.mail,),title: Text("Inbox")),

        ],
      ),
      
    );
  }
}




























