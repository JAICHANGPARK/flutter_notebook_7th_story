import 'package:flutter/material.dart';

class HomeDetailPage extends StatefulWidget {

  final List<String> imgItems;

  HomeDetailPage(this.imgItems);

  @override
  _HomeDetailPageState createState() => _HomeDetailPageState();
}

class _HomeDetailPageState extends State<HomeDetailPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            children: [
              
            ],
          ),
        ),
      ),


    );
  }
}
