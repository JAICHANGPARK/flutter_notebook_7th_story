import 'package:flutter/material.dart';

class Boxing {
  final String title;
  final String name;
  final String time;
  final String attendees;

  Boxing({this.title, this.name, this.time, this.attendees});
}

class BoxingHomePage extends StatefulWidget {
  @override
  _BoxingHomePageState createState() => _BoxingHomePageState();
}

class _BoxingHomePageState extends State<BoxingHomePage> {
  List<Boxing> _items = [
    Boxing(title: "ROUND GRID", name: "Marta Keller", time: "Today, 4:00 PM", attendees: "34"),
    Boxing(title: "ROUND GRID", name: "Marta Keller", time: "Today, 4:00 PM", attendees: "34"),
    Boxing(title: "ROUND GRID", name: "Marta Keller", time: "Today, 4:00 PM", attendees: "34"),
    Boxing(title: "ROUND GRID", name: "Marta Keller", time: "Today, 4:00 PM", attendees: "34")
  ];

  List<Widget> _buildCourseWidget(List<Boxing> data) {
    return data
        .map((e) => Container(
        height: MediaQuery.of(context).size.height / 3,
            margin: EdgeInsets.all(16),
            decoration: BoxDecoration(color: Colors.grey, borderRadius: BorderRadius.circular(16)),
            padding: EdgeInsets.all(16),
            child: Column(
              children: [
                Expanded(
                  flex: 1,
                  child: Placeholder(),
                ),
                Expanded(
                  flex: 1,
                  child: Placeholder(),
                )
              ],
            )))
        .toList();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: MediaQuery.of(context).size.height / 3,
              child: Stack(
                children: [
                  Positioned(
                    top: 0,
                    bottom: 64,
                    left: 0,
                    right: 0,
                    child: Container(
                      decoration: BoxDecoration(
                          color: Colors.black.withOpacity(.1),
                          image: DecorationImage(
                              image: NetworkImage(
                                  "https://cdn.pixabay.com/photo/2016/05/14/03/24/girl-in-the-gym-1391369_960_720.jpg"),
                              fit: BoxFit.cover,
                              colorFilter: ColorFilter.mode(Colors.black.withOpacity(.4), BlendMode.darken))),
                      padding: EdgeInsets.only(top: 48, left: 16, right: 16),
                      child: Column(
                        children: [
                          Row(
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "DREAMWALKER",
                                    style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 24),
                                  ),
                                  Text(
                                    "BOXING CLUB",
                                    style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 24),
                                  )
                                ],
                              ),
                              Spacer(),
                              Container(
                                height: 48,
                                width: 48,
                                decoration: BoxDecoration(
                                    color: Colors.white.withOpacity(0.6), borderRadius: BorderRadius.circular(8)),
                                child: Center(
                                  child: Icon(
                                    Icons.close,
                                    color: Colors.white,
                                  ),
                                ),
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                  Positioned(
                    left: 16,
                    right: 16,
                    bottom: 24,
                    child: Container(
                      height: 64,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(16),
                          boxShadow: [
                            BoxShadow(
                                color: Colors.black.withOpacity(.2),
                                blurRadius: 3,
                                spreadRadius: 2,
                                offset: Offset(0, 2))
                          ]),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Follow channel",
                            style: TextStyle(color: Colors.brown, fontWeight: FontWeight.bold, fontSize: 18),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Icon(
                              Icons.add_circle,
                              color: Colors.brown,
                            ),
                          )
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
            Container(
              height: MediaQuery.of(context).size.height / 10,
              padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
              child: Container(
                padding: EdgeInsets.all(8),
                decoration: BoxDecoration(color: Colors.grey[200], borderRadius: BorderRadius.circular(36)),
                child: Row(
                  children: [
                    Expanded(
                      child: Container(
                        decoration: BoxDecoration(color: Colors.transparent),
                        child: Center(
                          child: Text(
                            "Workouts",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.blueGrey[300],
                            ),
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      child: Container(
                        decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(24)),
                        child: Center(
                          child: Text(
                            "Live Class",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      child: Container(
                        decoration: BoxDecoration(color: Colors.transparent),
                        child: Center(
                          child: Text(
                            "Leaderboard",
                            style: TextStyle(fontWeight: FontWeight.bold, color: Colors.blueGrey[300]),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 8,
            ),
            ..._buildCourseWidget(_items),
          ],
        ),
      ),
    );
  }
}
