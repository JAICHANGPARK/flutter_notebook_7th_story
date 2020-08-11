import 'package:flutter/material.dart';

class UserMatchingApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: UserMatchingHomePage(),
    );
  }
}

class UserMatchingHomePage extends StatefulWidget {
  @override
  _UserMatchingHomePageState createState() => _UserMatchingHomePageState();
}

class _UserMatchingHomePageState extends State<UserMatchingHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            Positioned(
                top: 0,
                left: 0,
                right: 0,
                child: Container(
                  height: MediaQuery.of(context).size.height /4,
                  decoration: BoxDecoration(
                    color: Colors.blue[100]
                  ),
                ))
          ],
        ),
      ),
    );
  }
}











