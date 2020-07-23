import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SmartHomeMainPage extends StatefulWidget {
  @override
  _SmartHomeMainPageState createState() => _SmartHomeMainPageState();
}

class _SmartHomeMainPageState extends State<SmartHomeMainPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.orange[100],
      body: Stack(
        children: [
          Positioned(
            left: 0,
            right: 0,
            top: 0,
            bottom: 100,
            child: Container(
              padding: EdgeInsets.all(16),
              decoration: BoxDecoration(
                  color: Colors.orange[50],
                  borderRadius: BorderRadius.only(bottomRight: Radius.circular(64), bottomLeft: Radius.circular(64))),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    flex: 2,
                    child: Center(
                      child: Text("My Home", style: TextStyle(
                        fontSize: 28,
                        fontWeight: FontWeight.bold,
                        color: Colors.brown
                      ),),
                    ),
                  ),
                  Expanded(
                    flex: 3,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Custom Scenes"),
                        Row(
                          children: [
                            Expanded(
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Column(
                                  children: [
                                    CircleAvatar(radius: 48,
                                    child: Center(
                                      child: Text("☀️", style: TextStyle(
                                        fontSize: 32
                                      ),),
                                    ),
                                    backgroundColor: Colors.white,),
                                    Text("Morning",style: TextStyle(
                                      color: Colors.brown
                                    ),)
                                  ],
                                ),
                              ),
                            ),
                            Expanded(
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Column(
                                  children: [
                                    CircleAvatar(radius: 48,
                                      child: Center(
                                        child: Text("🌙", style: TextStyle(
                                            fontSize: 32
                                        ),),
                                      ),
                                      backgroundColor: Colors.white,),
                                    Text("Night",style: TextStyle(
                                        color: Colors.brown
                                    ),)
                                  ],
                                ),
                              ),
                            ),
                            Expanded(
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Column(
                                  children: [
                                    CircleAvatar(radius: 48,
                                      child: Center(
                                        child: Text("🏡", style: TextStyle(
                                            fontSize: 32
                                        ),),
                                      ),
                                      backgroundColor: Colors.white,),
                                    Text("Going out",style: TextStyle(
                                        color: Colors.brown
                                    ),)
                                  ],
                                ),
                              ),
                            ),
                            Expanded(
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Column(
                                  children: [
                                    CircleAvatar(radius: 48,
                                      child: Center(
                                        child: Text("🍿", style: TextStyle(
                                            fontSize: 32
                                        ),),
                                      ),
                                      backgroundColor: Colors.white,),
                                    Text("Movie time",style: TextStyle(
                                        color: Colors.brown
                                    ),)
                                  ],
                                ),
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                  Expanded(
                    flex: 2,
                    child: Placeholder(),
                  ),
                  Expanded(
                    flex: 5,
                    child: Placeholder(),
                  )
                ],
              ),
            ),
          ),
          Positioned(
            left: 0,
            right: 0,
            bottom: 24,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                IconButton(
                  icon: Icon(Icons.home),
                  onPressed: () {},
                  iconSize: 32,
                  color: Colors.orangeAccent,
                ),
                IconButton(
                  icon: Icon(Icons.local_florist),
                  onPressed: () {},
                  iconSize: 32,
                  color: Colors.orangeAccent[100],
                ),
                IconButton(
                  icon: Icon(Icons.person),
                  onPressed: () {},
                  iconSize: 32,
                  color: Colors.orangeAccent[100],
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
