import 'package:flutter/material.dart';

class Boxing {
  final String img;
  final String title;
  final String name;
  final String time;
  final String attendees;

  Boxing({this.img, this.title, this.name, this.time, this.attendees});
}

class BoxingHomePage extends StatefulWidget {
  @override
  _BoxingHomePageState createState() => _BoxingHomePageState();
}

class _BoxingHomePageState extends State<BoxingHomePage> {
  int _tabIndex = 0;
  List<Boxing> _items = [
    Boxing(
        img: "https://cdn.pixabay.com/photo/2017/04/26/09/44/sport-2262083__340.jpg",
        title: "ROUND GRID",
        name: "Marta Keller",
        time: "Today, 4:00 PM",
        attendees: "34"),
    Boxing(
        title: "ROUND GRID",
        name: "Marta Keller",
        time: "Today, 4:00 PM",
        attendees: "34",
        img: "https://cdn.pixabay.com/photo/2017/04/25/20/18/sport-2260736__340.jpg"),
    Boxing(
        title: "ROUND GRID",
        name: "Marta Keller",
        time: "Today, 4:00 PM",
        attendees: "34",
        img: "https://cdn.pixabay.com/photo/2015/07/02/10/22/training-828726__340.jpg"),
    Boxing(
        img: "https://cdn.pixabay.com/photo/2019/11/11/12/12/woman-4618189__340.jpg",
        title: "ROUND GRID",
        name: "Marta Keller",
        time: "Today, 4:00 PM",
        attendees: "34"),
  ];

  List<Widget> _buildCourseWidget(List<Boxing> data) {
    return data
        .map((e) => Container(
            height: MediaQuery.of(context).size.height / 2.8,
            margin: EdgeInsets.all(16),
            decoration: BoxDecoration(
                color: Colors.grey,
                borderRadius: BorderRadius.circular(16),
                image: DecorationImage(image: NetworkImage(e.img), fit: BoxFit.cover)),
            padding: EdgeInsets.all(16),
            child: Column(
              children: [
                Expanded(
                  flex: 2,
                  child: Placeholder(),
                ),
                Expanded(
                  flex: 3,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(e.title,style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 28
                          ),),
                          CircleAvatar()
                        ],
                      ),
                      Text(e.name, style: TextStyle(
                        color: Colors.white.withOpacity(.5),
                        fontWeight: FontWeight.bold,
                        fontSize: 20
                      ),),
                      Spacer(),
                      Row(
                        children: [
                          Column(
                            children: [
                              Row(
                                children: [
                                  IconButton(
                                    icon: Icon(Icons.timer),
                                    color: Colors.white,
                                    onPressed: (){},
                                  ),
                                  Text(e.time, style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                  ),),
                                ],
                              )

                            ],
                          ),
                          Container(
                            height: 52,width: 96,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(8),
                            ),
                          )
                        ],
                      )

                    ],
                  ),
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
