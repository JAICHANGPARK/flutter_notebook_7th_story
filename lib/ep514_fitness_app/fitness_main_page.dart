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
              flex: 3,
              child: Column(
                children: [
                  Expanded(
                    child: Placeholder(),
                  ),
                  Expanded(
                    child: Placeholder(),
                  )
                ],
              ),
            ),
            Expanded(
              flex: 7,
              child: Placeholder(),
            ),
            Expanded(
              flex: 3,
              child: Column(
                children: [
                  Expanded(
                    child: Placeholder(),
                  ),
                  Expanded(
                    child: Placeholder(),
                  )
                ],
              ),
            ),
            Expanded(
              flex: 2,
              child: Container(
                margin: EdgeInsets.all(24),
                decoration: BoxDecoration(color: Colors.teal[500]),
                child: Center(
                  child: Text(
                    "Create live workout",
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.white,
                    ),
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
