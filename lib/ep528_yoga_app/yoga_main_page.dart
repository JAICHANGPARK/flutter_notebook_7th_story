import 'package:flutter/material.dart';

class YogaMainPage extends StatefulWidget {
  @override
  _YogaMainPageState createState() => _YogaMainPageState();
}

class _YogaMainPageState extends State<YogaMainPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      drawer: Drawer(),
      body: SingleChildScrollView(
        child: Column(),
      ),
    );
  }
}
