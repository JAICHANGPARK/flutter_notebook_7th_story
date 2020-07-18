import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class FitnessMainPage extends StatefulWidget {
  @override
  _FitnessMainPageState createState() => _FitnessMainPageState();
}

class _FitnessMainPageState extends State<FitnessMainPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomPadding: false,
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.black,
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              flex: 3,
              child: Column(
                children: [
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.only(left: 32, right: 24),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Live Workouts",
                            style: TextStyle(fontSize: 20, color: Colors.white, fontWeight: FontWeight.bold),
                          ),
                          IconButton(
                            icon: Icon(
                              Icons.account_circle,
                              color: Colors.white,
                            ),
                            onPressed: () {},
                          )
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      margin: EdgeInsets.symmetric(horizontal: 24, vertical: 12),
                      decoration:
                          BoxDecoration(color: Colors.white.withOpacity(0.3), borderRadius: BorderRadius.circular(36)),
                      padding: EdgeInsets.symmetric(horizontal: 40),
                      child: TextField(
                        decoration: InputDecoration(
                            icon: Icon(Icons.search),
                            border: InputBorder.none,
                            hintText: "Search workouts and trainers",
                            hintStyle: TextStyle(color: Colors.white, fontWeight: FontWeight.bold)),
                      ),
                    ),
                  )
                ],
              ),
            ),
            Expanded(
              flex: 7,
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    return Container(
                      width: MediaQuery.of(context).size.width / 2,
                      margin: EdgeInsets.only(right: 12, top: 8, bottom: 8),
                      decoration: BoxDecoration(color: Colors.red, borderRadius: BorderRadius.circular(16)),
                      padding: EdgeInsets.all(24),

                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Yoga"),
                          Text("beginner")
                        ],
                      ),

                    );
                  }),
            ),
            Expanded(
              flex: 3,
              child: Padding(
                padding: const EdgeInsets.only(left: 24),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                      flex: 1,
                      child: Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          "Feature trainers",
                          style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.white),
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 3,
                      child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          itemBuilder: (context, index) {
                            return Padding(
                              padding: const EdgeInsets.only(right: 24),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  CircleAvatar(
                                    backgroundImage: NetworkImage(
                                        "https://avatars0.githubusercontent.com/u/19484515?s=460&u=0ec7b31ff9129826cccc5cd971887a9dd0e0a538&v=4"),
                                  ),
                                  SizedBox(
                                    height: 8,
                                  ),
                                  Text(
                                    "Dream",
                                    style: TextStyle(color: Colors.white, fontSize: 12),
                                  ),
                                  Text(
                                    "crossfit",
                                    style: TextStyle(color: Colors.grey, fontSize: 12),
                                  )
                                ],
                              ),
                            );
                          }),
                    )
                  ],
                ),
              ),
            ),
            Expanded(
              flex: 2,
              child: Container(
                margin: EdgeInsets.all(24),
                decoration: BoxDecoration(color: Colors.teal[500], borderRadius: BorderRadius.circular(16)),
                child: Center(
                  child: Text(
                    "Create live workout",
                    style: TextStyle(fontSize: 18, color: Colors.white, fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
