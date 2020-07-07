import 'package:flutter/material.dart';

class TimeTrackingMainPage extends StatefulWidget {
  @override
  _TimeTrackingMainPageState createState() => _TimeTrackingMainPageState();
}

class _TimeTrackingMainPageState extends State<TimeTrackingMainPage> {
  int _pageIndex = 0;
  PageController _pageController;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _pageController = PageController(initialPage: 0, viewportFraction: 0.9);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: MediaQuery.of(context).size.height / 2.1,
                child: Column(
                  children: [
                    Expanded(
                      flex: 1,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 16),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "My projects",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Icon(
                              Icons.tune,
                              color: Colors.grey,
                              size: 18,
                            )
                          ],
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 9,
                      child: PageView(
                        controller: _pageController,
                        scrollDirection: Axis.horizontal,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(4.0),
                            child: Card(
                              elevation: 10,
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Column(
                                  children: [
                                    Expanded(
                                      child: Row(
                                        children: [
                                          Container(
                                            height: 34,
                                            width: 34,
                                            decoration: BoxDecoration(
                                              color: Colors.orange,
                                              borderRadius: BorderRadius.circular(8)
                                            ),
                                          )

                                        ],
                                      ),
                                    ),
                                    Expanded(
                                      flex: 2,
                                      child: Placeholder(),
                                    ),
                                    Expanded(
                                      child: Row(
                                        children: [
                                          Expanded(
                                            child: Column(
                                              mainAxisAlignment: MainAxisAlignment.center,
                                              children: [
                                                Text("Total hours".toUpperCase(), style: TextStyle(
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 12
                                                ),),
                                                Text("41.75", style: TextStyle(
                                                  fontWeight: FontWeight.bold,
                                                  color: Colors.black,
                                                  fontSize: 16
                                                ),)
                                              ]
                                            ),
                                          ),
                                          Expanded(
                                            child: Column(
                                                mainAxisAlignment: MainAxisAlignment.center,
                                                children: [
                                                  Text("GROSS PAY".toUpperCase(), style: TextStyle(
                                                      fontWeight: FontWeight.bold,
                                                      fontSize: 12
                                                  ),),
                                                  Text("\$43.785", style: TextStyle(
                                                      fontWeight: FontWeight.bold,
                                                      color: Colors.black,
                                                      fontSize: 16
                                                  ),)
                                                ]
                                            ),
                                          ),

                                        ],
                                      ),
                                    ),
                                    Divider(),
                                    Expanded(
                                      child: Placeholder(),
                                    )
                                  ],
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(4.0),
                            child: Card(
                              elevation: 10,
                              child: Column(),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(4.0),
                            child: Card(
                              elevation: 10,
                              child: Column(),
                            ),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 16,
              ),
              Container(
                height: MediaQuery.of(context).size.height / 1.8,
                child: Column(
                  children: [
                    Expanded(
                      flex: 1,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 16),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Earnings",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Icon(
                              Icons.tune,
                              color: Colors.grey,
                              size: 18,
                            )
                          ],
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 9,
                      child: Padding(
                        padding: const EdgeInsets.all(4.0),
                        child: Card(
                          elevation: 12,
                          color: Colors.white,
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Expanded(
                                child: Placeholder(),
                              ),
                              Expanded(
                                child: Placeholder(),
                              ),
                              Expanded(
                                child: Placeholder(),
                              )
                            ],
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
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
