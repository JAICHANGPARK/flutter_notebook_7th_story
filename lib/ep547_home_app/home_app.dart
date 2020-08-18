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
      resizeToAvoidBottomPadding: false,
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        backgroundColor: Colors.white,
        centerTitle: true,
        title: Text(
          "Feed",
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: SafeArea(
        child: Stack(
          children: [
            Positioned(child: Placeholder()),
            Positioned(
                left: 16,
                right: 16,
                bottom: 24,
                child: Container(
                  height: 58,
                  decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(32), boxShadow: [
                    BoxShadow(
                      offset: Offset(0, 4),
                      color: Colors.black.withOpacity(.2),
                      blurRadius: 3,
                      spreadRadius: 2,
                    )
                  ]),
                ))
          ],
        ),
      ),
    );
  }
}
