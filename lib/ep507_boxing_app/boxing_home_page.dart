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
              child: Placeholder(),
            ))
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
                      child: Column(),
                    ),
                  ),
                  Positioned(
                    left: 16,
                    right: 16,
                    bottom: 24,
                    child: Container(
                      height: 72,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(16),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withOpacity(.2),
                            blurRadius: 3,
                            spreadRadius: 2,
                            offset: Offset(0, 2)
                          )
                        ]
                      ),

                    ),
                  )
                ],
              ),
            ),
            Container(
              height: MediaQuery.of(context).size.height / 8,
              child: Placeholder(),
            ),
            Container(
              height: MediaQuery.of(context).size.height / 3,
              child: Placeholder(),
            ),
            ..._buildCourseWidget(_items),
          ],
        ),
      ),
    );
  }
}
