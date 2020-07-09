import 'package:flutter/material.dart';


class BoxingHomePage extends StatefulWidget {
  @override
  _BoxingHomePageState createState() => _BoxingHomePageState();
}

class _BoxingHomePageState extends State<BoxingHomePage> {
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
              height:  MediaQuery.of(context).size.height / 4,
              
            )


          ],
        ),

      ),
    );
  }
}




















