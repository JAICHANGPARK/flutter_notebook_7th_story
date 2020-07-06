import 'package:flutter/material.dart';

class TimeTrackingMainPage extends StatefulWidget {
  @override
  _TimeTrackingMainPageState createState() => _TimeTrackingMainPageState();
}

class _TimeTrackingMainPageState extends State<TimeTrackingMainPage> {
  int _pageIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showModalBottomSheet(
              context: context,
              builder: (context) {
                return Container(
                  height: MediaQuery.of(context).size.height - 120,
                );
              },
              isScrollControlled: true);
        },
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
                onPressed: () {
                  setState(() {
                    _pageIndex = 0;
                  });
                },
                color: _pageIndex == 0 ? Colors.black : Colors.grey,
              ),
              IconButton(
                icon: Icon(Icons.timer),
                onPressed: () {
                  setState(() {
                    _pageIndex = 1;
                  });
                },
                color: _pageIndex == 1 ? Colors.black : Colors.grey,
              ),
              SizedBox(
                width: 32,
              ),
              IconButton(
                icon: Icon(Icons.list),
                onPressed: () {
                  setState(() {
                    _pageIndex = 2;
                  });
                },
                color: _pageIndex == 2 ? Colors.black : Colors.grey,
              ),
              IconButton(
                icon: Icon(Icons.tune),
                onPressed: () {
                  setState(() {
                    _pageIndex = 3;
                  });
                },
                color: _pageIndex == 3 ? Colors.black : Colors.grey,
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
