import 'package:flutter/material.dart';

class Boxing{
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
    Boxing(
      title: "ROUND GRID",
      name: "Marta Keller",
      time: "Today, 4:00 PM",
      attendees: "34"
    )
  ];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: MediaQuery.of(context).size.height / 3,
              child: Placeholder(),
            ),
            Container(
              height: MediaQuery.of(context).size.height / 8,
              child: Placeholder(),
            ),
            Container(
              height:  MediaQuery.of(context).size.height / 3,
              child: Placeholder(),
            )


          ],
        ),

      ),
    );
  }
}




















