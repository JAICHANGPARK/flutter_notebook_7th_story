import 'package:flutter/material.dart';

class FeaturePage extends StatefulWidget {
  @override
  _FeaturePageState createState() => _FeaturePageState();
}

class _FeaturePageState extends State<FeaturePage> with SingleTickerProviderStateMixin {
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
      backgroundColor: Colors.white,
      resizeToAvoidBottomInset: false,
      resizeToAvoidBottomPadding: false,
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.grey),
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      body: Column(
        children: [
          Expanded(
            flex: 2,
            child: Container(
              margin: EdgeInsets.fromLTRB(16, 8, 16, 8),
              decoration: BoxDecoration(color: Colors.grey[200], borderRadius: BorderRadius.circular(12)),
              padding: EdgeInsets.all(8),
              child: Center(
                child: TextField(
                  decoration:
                      InputDecoration(hintText: "Search", border: InputBorder.none, suffixIcon: Icon(Icons.search)),
                ),
              ),
            ),
          ),
          Expanded(
            flex: 14,
            child: Column(
              children: [
                Expanded(
                  flex: 2,
                  child: TabBar(
                    controller: _tabController,
                    labelColor: Colors.black,
                    unselectedLabelColor: Colors.grey[200],
                    indicatorColor: Colors.orange,
                    indicatorSize: TabBarIndicatorSize.label,
                    labelStyle: TextStyle(fontWeight: FontWeight.bold),
                    tabs: [
                      Tab(
                        text: "Feature",
                      ),
                      Tab(
                        text: "Popular",
                      ),
                      Tab(
                        text: "By Type",
                      ),
                    ],
                  ),
                ),
                Expanded(
                  flex: 18,
                  child: TabBarView(
                    controller: _tabController,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: GridView.count(
                            shrinkWrap: true,
                        crossAxisCount: 2,
                          childAspectRatio: 0.8,
                          mainAxisSpacing: 16,
                          crossAxisSpacing: 16,
                          children: [
                            Container(
                              child: Column(
                                children: [
                                  Expanded(
                                      child: Container(
                                        decoration: BoxDecoration(
                                            image: DecorationImage(
                                                image: NetworkImage(
                                                    "https://cdn.pixabay.com/photo/2019/12/31/16/06/yoga-4732209__340.jpg"),
                                                fit: BoxFit.cover)),
                                      )),
                                  Expanded(
                                    child: Column(

                                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          "Upward-Facing Dog",
                                          style: TextStyle(fontWeight: FontWeight.bold),
                                        ),
                                        Row(
                                          children: List.generate(
                                              5,
                                                  (index) => Icon(
                                                Icons.star,
                                                size: 15,
                                                color: Colors.orange,
                                              )).toList(),
                                        ),
                                        Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam",
                                          style: TextStyle(
                                            fontSize: 12,

                                          ),
                                          overflow: TextOverflow.fade,
                                        ),
                                      ],
                                    ),
                                  )
                                ],
                              ),
                            ),
                            Container(
                              child: Column(
                                children: [
                                  Expanded(
                                      child: Container(
                                        decoration: BoxDecoration(
                                            image: DecorationImage(
                                                image: NetworkImage(
                                                    "https://cdn.pixabay.com/photo/2017/08/02/20/24/people-2573216_960_720.jpg"),
                                                fit: BoxFit.cover)),
                                      )),
                                  Expanded(
                                    child: Column(

                                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          "Upward-Facing Dog",
                                          style: TextStyle(fontWeight: FontWeight.bold),
                                        ),
                                        Row(
                                          children: List.generate(
                                              5,
                                                  (index) => Icon(
                                                Icons.star,
                                                size: 15,
                                                color: Colors.orange,
                                              )).toList(),
                                        ),
                                        Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam",
                                          style: TextStyle(
                                            fontSize: 12,

                                          ),
                                          overflow: TextOverflow.fade,
                                        ),
                                      ],
                                    ),
                                  )
                                ],
                              ),
                            ),
                            Container(
                              child: Column(
                                children: [
                                  Expanded(
                                      child: Container(
                                        decoration: BoxDecoration(
                                            image: DecorationImage(
                                                image: NetworkImage(
                                                    "https://cdn.pixabay.com/photo/2017/11/18/05/00/yoga-2959213_960_720.jpg"),
                                                fit: BoxFit.cover)),
                                      )),
                                  Expanded(
                                    child: Column(

                                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          "Upward-Facing Dog",
                                          style: TextStyle(fontWeight: FontWeight.bold),
                                        ),
                                        Row(
                                          children: List.generate(
                                              5,
                                                  (index) => Icon(
                                                Icons.star,
                                                size: 15,
                                                color: Colors.orange,
                                              )).toList(),
                                        ),
                                        Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam",
                                          style: TextStyle(
                                            fontSize: 12,

                                          ),
                                          overflow: TextOverflow.fade,
                                        ),
                                      ],
                                    ),
                                  )
                                ],
                              ),
                            ),
                            Container(

                              child: Column(
                                children: [
                                  Expanded(
                                      child: Container(
                                        decoration: BoxDecoration(
                                            image: DecorationImage(
                                                image: NetworkImage(
                                                    "https://cdn.pixabay.com/photo/2017/11/18/05/02/yoga-2959226_960_720.jpg"),
                                                fit: BoxFit.cover)),
                                      )),
                                  Expanded(
                                    child: Column(

                                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          "Upward-Facing Dog",
                                          style: TextStyle(fontWeight: FontWeight.bold),
                                        ),
                                        Row(
                                          children: List.generate(
                                              5,
                                                  (index) => Icon(
                                                Icons.star,
                                                size: 15,
                                                color: Colors.orange,
                                              )).toList(),
                                        ),
                                        Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam",
                                          style: TextStyle(
                                            fontSize: 12,

                                          ),
                                          overflow: TextOverflow.fade,
                                        ),
                                      ],
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(),
                      Container(),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        showSelectedLabels: false,
        showUnselectedLabels: false,
        selectedItemColor: Colors.grey,
        unselectedItemColor: Colors.grey,
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.calendar_today), title: Text("")),
          BottomNavigationBarItem(icon: Icon(Icons.person_outline), title: Text("")),
          BottomNavigationBarItem(icon: Icon(Icons.home), title: Text(""))
        ],
      ),
    );
  }
}
