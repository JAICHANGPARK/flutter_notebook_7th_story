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
                left: 24,
                right: 24,
                top: MediaQuery.of(context).size.height /3.6,
                bottom: 0,
                child: Placeholder()),
            Positioned(
                top: 0,
                left: 0,
                right: 0,
                child: Container(
                  height: MediaQuery.of(context).size.height /3.5,
                  decoration: BoxDecoration(
                      color: Colors.blue[100],
                      borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(64)
                      )
                  ),
                  padding: EdgeInsets.symmetric(horizontal: 24, vertical: 16),
                  child: Column(
                    children: [
                      Expanded(child: Row(
                        children: [
                          Expanded(child: Placeholder()),
                          Expanded(child: Placeholder()),
                          Expanded(child: Placeholder()),
                          Expanded(child: Placeholder()),
                        ],
                      )),
                      Expanded(child: Container(
                        margin: EdgeInsets.symmetric(vertical: 8),
                        decoration: BoxDecoration(
                          color: Colors.blue[200],
                          borderRadius: BorderRadius.circular(32)
                        ),
                      )),
                      Expanded(child: Row(
                        children: [
                          Icon(Icons.tune),
                          Spacer(),
                          Text("Best match"),
                          IconButton(icon: Icon(Icons.keyboard_arrow_down), onPressed: (){})
                        ],
                      )),
                    ],
                  ),
                )

            ),

          ],
        ),
      ),
    );
  }
}











