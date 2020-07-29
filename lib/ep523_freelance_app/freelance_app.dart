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
      backgroundColor: Colors.grey[100],
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
                flex: 1,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TopBadgesItem(),
                )),
            Expanded(
              flex: 5,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                      flex: 2,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Good Morning,",
                              style: TextStyle(fontSize: 22),
                            ),
                            Text(
                              "Dreamwalker",
                              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                            )
                          ],
                        ),
                      )),
                  Expanded(
                    flex: 6,
                    child: Row(
                      children: [
                        Expanded(
                          child: Container(
                            margin: EdgeInsets.all(8),
                            decoration: BoxDecoration(color: Colors.blue, borderRadius: BorderRadius.circular(12)),
                            padding: EdgeInsets.all(16),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      "Earning",
                                      style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.white),
                                    ),
                                    Icon(Icons.keyboard_arrow_right)
                                  ],
                                ),
                                Text(
                                  "Yesterday",
                                  style: TextStyle(fontSize: 12, color: Colors.grey),
                                ),
                                SizedBox(
                                  height: 16,
                                ),
                                Row(
                                  children: [
                                    Text(
                                      "\$",
                                      style: TextStyle(fontSize: 24, color: Colors.grey),
                                    ),
                                    Text(
                                      "1,025",
                                      style: TextStyle(
                                        fontSize: 24,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white,
                                      ),
                                    )
                                  ],
                                )
                              ],
                            ),
                          ),
                        ),
                        Expanded(
                          child: Container(
                            margin: EdgeInsets.all(8),
                            decoration: BoxDecoration(),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Expanded(
                                  flex: 4,
                                  child: Container(
                                    padding: EdgeInsets.all(8),
                                    decoration:
                                        BoxDecoration(color: Colors.grey[300], borderRadius: BorderRadius.circular(12)),
                                    child: Column(
                                      children: [
                                        Expanded(
                                          flex: 2,
                                          child: Row(
                                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                            children: [
                                              Text(
                                                "Resume",
                                                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                                              ),
                                              Icon(Icons.keyboard_arrow_right)
                                            ],
                                          ),
                                        ),
                                        Expanded(
                                          flex: 5,
                                          child: Container(
                                            width: double.infinity,
                                            child: ListView.builder(itemBuilder: (context, index) {
                                              return Container(
                                                height: 48,
                                                margin: EdgeInsets.only(bottom: 8),
                                                decoration: BoxDecoration(color: Colors.white),
                                                padding: EdgeInsets.all(4),
                                                child: Row(
                                                  children: [
                                                    Container(
                                                      height: 42,
                                                      width: 42,
                                                      decoration: BoxDecoration(
                                                          color: Colors.blue[50],
                                                          borderRadius: BorderRadius.circular(8)),
                                                      child: Center(
                                                        child: Icon(
                                                          Icons.description,
                                                          color: Colors.blue,
                                                        ),
                                                      ),
                                                    ),
                                                    Padding(
                                                      padding: const EdgeInsets.only(left: 8, top: 4, bottom: 4),
                                                      child: Column(
                                                        crossAxisAlignment: CrossAxisAlignment.start,
                                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                        children: [
                                                          Text(
                                                            "Freelancer R..",
                                                            style: TextStyle(fontSize: 14),
                                                          ),
                                                          Text(
                                                            "123.3MB",
                                                            style: TextStyle(fontSize: 12),
                                                          )
                                                        ],
                                                      ),
                                                    )
                                                  ],
                                                ),
                                              );
                                            }),
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  height: 8,
                                ),
                                Expanded(
                                  flex: 2,
                                  child: Container(
                                      padding: EdgeInsets.all(8),
                                      decoration: BoxDecoration(
                                          color: Colors.grey[300], borderRadius: BorderRadius.circular(12)),
                                      child: Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                        crossAxisAlignment: CrossAxisAlignment.center,
                                        children: [
                                          Container(
                                            height: 48,
                                            width: 48,
                                            decoration: BoxDecoration(
                                                color: Colors.white, borderRadius: BorderRadius.circular(8)),
                                            child: Center(
                                              child: Text(
                                                "9",
                                                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
                                              ),
                                            ),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.all(8.0),
                                            child: Column(
                                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                              crossAxisAlignment: CrossAxisAlignment.start,
                                              children: [
                                                Text(
                                                  "Invoice",
                                                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                                                ),
                                                Text(
                                                  "Prepared",
                                                  style: TextStyle(fontSize: 12, color: Colors.grey),
                                                )
                                              ],
                                            ),
                                          ),
                                          IconButton(
                                            icon: Icon(Icons.keyboard_arrow_right),
                                            onPressed: () {},
                                          )
                                        ],
                                      )),
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
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    flex: 2,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        children: [
                          Text("Project", style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold
                          ),),
                          Icon(Icons.arrow_drop_down, color: Colors.grey,),
                          Spacer(),
                          Text("See All", style: TextStyle(
                            color: Colors.grey
                          ),)
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 10,
                    child: ListView.builder(itemBuilder: (context, index){
                      return Container(
                        height: 120,
                        margin: EdgeInsets.all(8),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(12)
                        ),
                        padding: EdgeInsets.all(8),
                        child: Column(
                          children: [
                            Expanded(
                              child: Row(
                                children: [
                                  Container(
                                    height: 54,
                                    width: 54,
                                    child: Stack(
                                      children: [
                                        Positioned(
                                          left: 0,
                                          right: 0,
                                          bottom: 0,
                                          top: 0,
                                          child: CircleAvatar(),
                                        ),
                                        Positioned(
                                          left: 0,
                                          right: 0,
                                          bottom: 0,
                                          top: 0,
                                          child: Container(
                                            height: 16,
                                            width: 16,
                                          ),
                                        ),
                                      ],
                                    ),
                                  )

                                ],
                              ),
                            ),
                            Divider(),
                            Expanded(
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Container(
                                    height: 48,
                                    width: 48,
                                    decoration: BoxDecoration(
                                      color: Colors.grey[200],
                                      borderRadius: BorderRadius.circular(8)
                                    ),
                                    child: Column(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: [
                                        Text("23",style: TextStyle(
                                          fontWeight: FontWeight.bold
                                        ),),
                                        Text("Days", style: TextStyle(
                                          fontSize: 12,
                                          color: Colors.grey,
                                        ),)
                                      ],
                                    ),
                                  ),
                                  SizedBox(width: 8,),
                                  Column(
                                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                    crossAxisAlignment: CrossAxisAlignment.start,

                                    children: [
                                      Text("Next Schedule",style: TextStyle(
                                        color: Colors.grey,
                                        fontWeight: FontWeight.bold
                                      ),),
                                      Row(
                                        children: [
                                          CircleAvatar(
                                            radius: 4,
                                            backgroundColor: Colors.purple,
                                          ),
                                          SizedBox(width: 8,),
                                          Text("Upload Prototype", style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                          ),),
                                        ],
                                      )

                                    ],
                                  ),
                                  Spacer(),
                                  Column(
                                    children: [
                                      Spacer(),
                                      Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Text("July 25"),
                                      )
                                    ],
                                  )
                                ],
                              ),
                            )
                          ],
                        ),
                      );
                    }),
                  )
                ],
              ),
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
