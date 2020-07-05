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
        backgroundColor: Colors.deepOrangeAccent,
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar(
        shape: CircularNotchedRectangle(),
        child: Container(
          height: 64,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              IconButton(
                icon: Icon(Icons.apps),
                onPressed: (){},
              ),
              IconButton(
                icon: Icon(Icons.timer),
                onPressed: () {},
              ),
              SizedBox(width: 32,),
              IconButton(
                icon: Icon(Icons.list),
                onPressed: (){},
              ),
              IconButton(
                icon: Icon(Icons.tune),
                onPressed: (){},
              )

            ],
          ),
        ),
      ),
//      bottomNavigationBar: BottomNavigationBar(
//
//          onTap: (idx) {},
//          type: BottomNavigationBarType.fixed,
//          showSelectedLabels: false,
//          showUnselectedLabels: false,
//          items: [
//            BottomNavigationBarItem(icon: Icon(Icons.apps), title: Text("")),
//            BottomNavigationBarItem(icon: Icon(Icons.timer), title: Text("")),
//            BottomNavigationBarItem(icon: Icon(Icons.list), title: Text("")),
//            BottomNavigationBarItem(icon: Icon(Icons.tune), title: Text(""))
//          ]),
    );
  }
}
