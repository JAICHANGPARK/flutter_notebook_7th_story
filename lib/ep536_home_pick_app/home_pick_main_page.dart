import 'package:bottom_navy_bar/bottom_navy_bar.dart';
import 'package:flutter/material.dart';

class HomePickHomePage extends StatefulWidget {
  @override
  _HomePickHomePageState createState() => _HomePickHomePageState();
}

class _HomePickHomePageState extends State<HomePickHomePage> {
  int _pageIndex = 0;
  int _itemIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      resizeToAvoidBottomPadding: false,
      body: SafeArea(
        child: Column(
          children: [
            //TODO: Build Appbar Widget
            Expanded(
              flex: 2,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      height: 40,
                      width: 40,
                      margin: EdgeInsets.all(8),
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(8),
                          boxShadow: [BoxShadow(color: Colors.black.withOpacity(0.1), blurRadius: 5, spreadRadius: 8)]),
                      child: Center(
                        child: Icon(Icons.keyboard_arrow_left),
                      ),
                    ),
                    Text(
                      "Search",
                      style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                    Container(
                      height: 40,
                      width: 40,
                      margin: EdgeInsets.all(8),
                      decoration: BoxDecoration(color: Colors.green, borderRadius: BorderRadius.circular(8)),
                      child: Center(),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 8,
            ),
            //TODO: Build Search Bar Widget
            Expanded(
              flex: 2,
              child: Container(
                margin: EdgeInsets.symmetric(horizontal: 16),
                decoration: BoxDecoration(
                    color: Colors.grey[200],
                    borderRadius: BorderRadius.circular(8),
                    border: Border.all(color: Colors.grey)),
                padding: EdgeInsets.symmetric(horizontal: 16),
                child: Center(
                  child: TextField(
                    decoration: InputDecoration(
                        icon: Icon(Icons.search),
                        hintText: "Search nearest room, house...",
                        border: InputBorder.none,
                        suffixIcon: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: CircleAvatar(
                            radius: 16,
                            backgroundColor: Colors.white,
                            child: Center(
                              child: Icon(
                                Icons.clear,
                                color: Colors.black,
                              ),
                            ),
                          ),
                        )),
                  ),
                ),
              ),
            ),
            //TODO: Build Tab Bar Widget
            SizedBox(
              height: 8,
            ),
            Expanded(
              flex: 2,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 16, vertical: 12),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    GestureDetector(
                      onTap: (){
                        setState(() {
                          _itemIndex = 0;
                        });
                      },
                      child: Container(
                        decoration:
                            BoxDecoration(
                                color: _itemIndex == 0 ? Colors.green[200] : Colors.white,
                                border:
                            _itemIndex == 0 ? null :
                            Border.all(color: Colors.grey), borderRadius: BorderRadius.circular(8)),
                        padding: EdgeInsets.symmetric(horizontal: 16),
                        child: Center(child: Text("All", style: TextStyle(
                          color: _itemIndex == 0 ? Colors.white : Colors.black
                        ),)),
                      ),
                    ),
                    GestureDetector(
                      onTap: (){
                        setState(() {
                          _itemIndex = 1;
                        });
                      },
                      child: Container(
                        decoration:
                            BoxDecoration(border: Border.all(color: Colors.grey), borderRadius: BorderRadius.circular(8)),
                        padding: EdgeInsets.symmetric(horizontal: 16),
                        child: Center(child: Text("Rent")),
                      ),
                    ),
                    Container(
                      decoration:
                          BoxDecoration(border: Border.all(color: Colors.grey), borderRadius: BorderRadius.circular(8)),
                      padding: EdgeInsets.symmetric(horizontal: 16),
                      child: Center(child: Text("Flat")),
                    ),
                    Container(
                      decoration:
                          BoxDecoration(border: Border.all(color: Colors.grey), borderRadius: BorderRadius.circular(8)),
                      padding: EdgeInsets.symmetric(horizontal: 16),
                      child: Center(child: Text("Room")),
                    ),
                    Container(
                      decoration:
                          BoxDecoration(border: Border.all(color: Colors.grey), borderRadius: BorderRadius.circular(8)),
                      padding: EdgeInsets.symmetric(horizontal: 16),
                      child: Center(child: Text("House")),
                    )
                  ],
                ),
              ),
            ),
            //TODO: Build Page or List Widget
            Expanded(
              flex: 14,
              child: IndexedStack(
                index: _itemIndex,
                children: [
                  Container(
                    decoration: BoxDecoration(color: Colors.red),
                  )
                ],
              ),
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
