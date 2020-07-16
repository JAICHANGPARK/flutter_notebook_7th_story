import 'package:flutter/material.dart';


class FitnessMainPage extends StatefulWidget {
  @override
  _FitnessMainPageState createState() => _FitnessMainPageState();
}

class _FitnessMainPageState extends State<FitnessMainPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              flex: 2,
              child: Placeholder(),
            ),
            Expanded(
              flex: 7,
              child: Placeholder(),
            ),
            Expanded(
              flex: 3,
              child: Placeholder(),
            ),
            Expanded(
              flex: 2,
              child: Placeholder(),
            )
          ],
        ),
      ),
    );
  }
}




















