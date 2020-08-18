import 'package:flutter/material.dart';
import 'package:flutter/services.dart';


class HomeApp extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeListPage(),
    );
  }
}

class HomeListPage extends StatefulWidget {
  @override
  _HomeListPageState createState() => _HomeListPageState();
}

class _HomeListPageState extends State<HomeListPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        centerTitle: true,
        title: Text("Feed", style: TextStyle(
          color: Colors.black
        ),),
      ),
      body: SafeArea(child: Stack(),),
    );
  }
}
























