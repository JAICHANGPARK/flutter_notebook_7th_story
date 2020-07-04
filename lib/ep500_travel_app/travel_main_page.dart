import 'package:flutter/material.dart';

class TravelApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: TravelHomePage(),
    );
  }
}

class TravelHomePage extends StatefulWidget {
  @override
  _TravelHomePageState createState() => _TravelHomePageState();
}

class _TravelHomePageState extends State<TravelHomePage> with SingleTickerProviderStateMixin {
  TabController _tabController;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _tabController = TabController(vsync: this, length: 3);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      resizeToAvoidBottomPadding: false,
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Expanded(
            flex: 6,
            child: Container(
              decoration: BoxDecoration(
                  color: Colors.orange,
                  borderRadius: BorderRadius.only(bottomLeft: Radius.circular(24), bottomRight: Radius.circular(24))),
              child: SafeArea(
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Expanded(
                        flex: 2,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            IconButton(
                              icon: Icon(
                                Icons.menu,
                              ),
                              color: Colors.white,
                              onPressed: () {},
                            ),
                            CircleAvatar(),
                          ],
                        ),
                      ),
                      Expanded(
                        flex: 2,
                        child: Container(),
                      ),
                      Expanded(
                        flex: 3,
                        child: Text(
                          "Where would you\nlike to go?",
                          style: TextStyle(fontSize: 32, color: Colors.white, fontWeight: FontWeight.bold),
                        ),
                      ),
                      Expanded(
                        flex: 2,
                        child: Card(
                          elevation: 4,
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: TextField(
                              decoration: InputDecoration(
                                  border: InputBorder.none, icon: Icon(Icons.search), hintText: "Search"),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
          Expanded(
            flex: 8,
            child: Column(
              children: [
                Expanded(
                  flex: 2,
                  child: TabBar(
                    labelColor: Colors.black,
                    labelStyle: TextStyle(
                      fontSize: 18,
                    ),
                    unselectedLabelColor: Colors.grey,
                    isScrollable: true,
                    indicatorColor: Colors.deepOrangeAccent,
                    indicatorSize: TabBarIndicatorSize.label,
                    indicatorWeight: 3,
                    tabs: [
                      Tab(
                        text: "Polular",
                      ),
                      Tab(
                        text: "Recommennded",
                      ),
                      Tab(
                        text: "Cost-efficiency",
                      ),
                    ],
                    controller: _tabController,
                  ),
                ),
                Expanded(
                  flex: 12,
                  child: TabBarView(
                    controller: _tabController,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 16, top: 8, bottom: 8),
                        child: ListView.builder(
                          itemCount: 10,
                          scrollDirection: Axis.horizontal,
                          itemBuilder: (context, index) {
                            return Container(
                              width: 260,
                              margin: EdgeInsets.only(right: 12),
                              decoration: BoxDecoration(
                                  color: Colors.red,
                                  borderRadius: BorderRadius.circular(24),
                                  image: DecorationImage(
                                      image: NetworkImage(
                                          "https://cdn.pixabay.com/photo/2015/12/08/00/30/golden-gate-bridge-1081782_960_720.jpg"),
                                      fit: BoxFit.cover)),
                              padding: EdgeInsets.all(16),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    children: [
                                      Spacer(),
                                      CircleAvatar(
                                        backgroundColor: Colors.orange,
                                        child: Icon(
                                          Icons.favorite,
                                          color: Colors.white,
                                        ),
                                      )
                                    ],
                                  ),
                                  Spacer(),
                                  Text(
                                    "Golden Gate\nBridge",
                                    style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 28),
                                  ),
                                  Row(
                                    children: [
                                      ...List<Widget>.generate(
                                          5,
                                          (index) => Icon(
                                                Icons.star,
                                                color: Colors.orange,
                                                size: 18,
                                              )).toList(),
                                      Text(
                                        "(32)",
                                        style: TextStyle(color: Colors.white, fontSize: 13),
                                      ),
                                    ],
                                  ),

                                  Padding(
                                    padding: const EdgeInsets.symmetric(8.0),
                                    child: Container(
                                      height: 38,
                                      child: Row(
                                        children: [
                                          Expanded(
                                            child: Placeholder(),
                                          )
                                        ],
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            );
                          },
                        ),
                      ),
                      ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (context, index) {
                          return Container(
                            color: Colors.red,
                            width: 200,
                          );
                        },
                      ),
                      ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (context, index) {
                          return Container(
                            color: Colors.red,
                            width: 200,
                          );
                        },
                      )
                    ],
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
