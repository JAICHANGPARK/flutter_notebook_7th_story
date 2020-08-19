import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';

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
            Positioned(
                left: 0,
                bottom: 0,
                right: 0,
                top: 0,
                child: SingleChildScrollView(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Near you",
                          style: GoogleFonts.montserrat(fontSize: 24, fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                  ),
                )),
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
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      IconButton(
                        onPressed: (){},
                        color: Colors.purple,
                        icon: Icon(Icons.home),
                      ),
                      IconButton(
                        onPressed: (){},
                        icon: Icon(Icons.home),
                      ),
                      IconButton(
                        onPressed: (){},
                        icon: Icon(Icons.home),
                      ),
                      IconButton(
                        onPressed: (){},
                        icon: Icon(Icons.home),
                      ),

                    ],
                  ),
                ),

            )
          ],
        ),
      ),
    );
  }
}
