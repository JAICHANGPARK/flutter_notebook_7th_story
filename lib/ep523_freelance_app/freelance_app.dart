import 'package:flutter/material.dart';
import 'package:flutter_notebook_7th_story/ep523_freelance_app/top_badges.dart';

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
  int _pageIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              flex: 1,
              child:Padding(
                padding: const EdgeInsets.all(8.0),
                child: TopBadgesItem(),
              )
            ),
            Expanded(
              flex: 5,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    flex:2,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Good Morning,",style: TextStyle(
                            fontSize: 22
                          ),),
                          Text("Dreamwalker",style: TextStyle(
                              fontSize: 22,
                            fontWeight: FontWeight.bold
                          ),)
                        ],
                      ),
                    )
                  ),
                  Expanded(
                    flex: 6,
                    child: Row(
                      children: [
                        Expanded(
                          child: Container(
                            margin: EdgeInsets.all(8),
                            decoration: BoxDecoration(
                              color: Colors.blue,
                              borderRadius: BorderRadius.circular(12)
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [

                              ],
                            ),
                          ),
                        ),
                        Expanded(
                          child: Container(
                            margin: EdgeInsets.all(8),
                            decoration: BoxDecoration(
                                color: Colors.grey[300],
                                borderRadius: BorderRadius.circular(12)
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  children: [
                                    Text("Resume"),
                                    Icon(Icons.keyboard_arrow_right)
                                  ],
                                )

                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
            Expanded(
              flex: 5,
              child: Placeholder(),
            ),

          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        mini: true,
        backgroundColor: Colors.black,
        onPressed: () {},
        child: Icon(Icons.search),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.miniCenterDocked,
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _pageIndex,
        onTap: (index) {
          setState(() {
            _pageIndex = index;
          });
        },
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(
              icon: Icon(
                Icons.dashboard,
              ),
              title: Text("Dashboard")),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.credit_card,
              ),
              title: Text("Earning")),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.bar_chart,
              ),
              title: Text("Statistic")),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.mail,
              ),
              title: Text("Inbox")),
        ],
      ),
    );
  }
}
