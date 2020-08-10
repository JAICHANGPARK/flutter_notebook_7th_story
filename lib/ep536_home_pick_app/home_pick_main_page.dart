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
                      onTap: () {
                        setState(() {
                          _itemIndex = 0;
                        });
                      },
                      child: Container(
                        decoration: BoxDecoration(
                            color: _itemIndex == 0 ? Colors.green[200] : Colors.white,
                            border: _itemIndex == 0 ? null : Border.all(color: Colors.grey),
                            borderRadius: BorderRadius.circular(8)),
                        padding: EdgeInsets.symmetric(horizontal: 16),
                        child: Center(
                            child: Text(
                          "All",
                          style: TextStyle(color: _itemIndex == 0 ? Colors.white : Colors.black),
                        )),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          _itemIndex = 1;
                        });
                      },
                      child: Container(
                        decoration: BoxDecoration(
                            color: _itemIndex == 1 ? Colors.green[200] : Colors.white,
                            border: _itemIndex == 1 ? null : Border.all(color: Colors.grey),
                            borderRadius: BorderRadius.circular(8)),
                        padding: EdgeInsets.symmetric(horizontal: 16),
                        child: Center(
                            child: Text(
                          "Rent",
                          style: TextStyle(color: _itemIndex == 1 ? Colors.white : Colors.black),
                        )),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          _itemIndex = 2;
                        });
                      },
                      child: Container(
                        decoration: BoxDecoration(
                            color: _itemIndex == 2 ? Colors.green[200] : Colors.white,
                            border: _itemIndex == 2 ? null : Border.all(color: Colors.grey),
                            borderRadius: BorderRadius.circular(8)),
                        padding: EdgeInsets.symmetric(horizontal: 16),
                        child: Center(
                            child:
                                Text("Flat", style: TextStyle(color: _itemIndex == 2 ? Colors.white : Colors.black))),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          _itemIndex = 3;
                        });
                      },
                      child: Container(
                        decoration: BoxDecoration(
                            color: _itemIndex == 3 ? Colors.green[200] : Colors.white,
                            border: _itemIndex == 3 ? null : Border.all(color: Colors.grey),
                            borderRadius: BorderRadius.circular(8)),
                        padding: EdgeInsets.symmetric(horizontal: 16),
                        child: Center(
                            child:
                                Text("Room", style: TextStyle(color: _itemIndex == 3 ? Colors.white : Colors.black))),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          _itemIndex = 4;
                        });
                      },
                      child: Container(
                        decoration: BoxDecoration(
                            color: _itemIndex == 4 ? Colors.green[200] : Colors.white,
                            border: _itemIndex == 4 ? null : Border.all(color: Colors.grey),
                            borderRadius: BorderRadius.circular(8)),
                        padding: EdgeInsets.symmetric(horizontal: 16),
                        child: Center(
                            child:
                                Text("House", style: TextStyle(color: _itemIndex == 4 ? Colors.white : Colors.black))),
                      ),
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
                    padding: EdgeInsets.all(16),
                    child: ListView.builder(itemBuilder: (context, index) {
                      return Container(
                        margin: EdgeInsets.only(bottom: 16),
                        height: MediaQuery.of(context).size.height / 7,
                        decoration: BoxDecoration(color: Colors.grey[200], borderRadius: BorderRadius.circular(8)),
                        padding: EdgeInsets.all(8),
                        child: Row(
                          children: [
                            Expanded(flex: 2, child: Placeholder()),
                            Expanded(flex: 2, child: Placeholder()),
                            Expanded(child: Placeholder())
                          ],
                        ),
                      );
                    }),
                  ),
                  Container(
                    decoration: BoxDecoration(color: Colors.green),
                  ),
                  Container(
                    decoration: BoxDecoration(color: Colors.blue),
                  ),
                  Container(
                    decoration: BoxDecoration(color: Colors.pink),
                  ),
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
