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
                      margin: EdgeInsets.symmetric(horizontal: 24, vertical: 8),
                      decoration: BoxDecoration(color: Colors.white.withOpacity(0.3)),
                      child: TextField(),
                    ),
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
                      child: Placeholder(),
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
