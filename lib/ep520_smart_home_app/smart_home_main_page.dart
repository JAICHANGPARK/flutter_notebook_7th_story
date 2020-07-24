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
                      child: Text(
                        "My Home",
                        style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold, color: Colors.brown),
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 3,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Custom Scenes",
                          style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.brown),
                        ),
                        Row(
                          children: [
                            Expanded(
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Column(
                                  children: [
                                    CircleAvatar(
                                      radius: 48,
                                      child: Center(
                                        child: Text(
                                          "☀️",
                                          style: TextStyle(fontSize: 32),
                                        ),
                                      ),
                                      backgroundColor: Colors.white,
                                    ),
                                    Text(
                                      "Morning",
                                      style: TextStyle(color: Colors.brown),
                                    )
                                  ],
                                ),
                              ),
                            ),
                            Expanded(
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Column(
                                  children: [
                                    CircleAvatar(
                                      radius: 48,
                                      child: Center(
                                        child: Text(
                                          "🌙",
                                          style: TextStyle(fontSize: 32),
                                        ),
                                      ),
                                      backgroundColor: Colors.white,
                                    ),
                                    Text(
                                      "Night",
                                      style: TextStyle(color: Colors.brown),
                                    )
                                  ],
                                ),
                              ),
                            ),
                            Expanded(
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Column(
                                  children: [
                                    CircleAvatar(
                                      radius: 48,
                                      child: Center(
                                        child: Text(
                                          "🏡",
                                          style: TextStyle(fontSize: 32),
                                        ),
                                      ),
                                      backgroundColor: Colors.white,
                                    ),
                                    Text(
                                      "Going out",
                                      style: TextStyle(color: Colors.brown),
                                    )
                                  ],
                                ),
                              ),
                            ),
                            Expanded(
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Column(
                                  children: [
                                    CircleAvatar(
                                      radius: 48,
                                      child: Center(
                                        child: Text(
                                          "🍿",
                                          style: TextStyle(fontSize: 32),
                                        ),
                                      ),
                                      backgroundColor: Colors.white,
                                    ),
                                    Text(
                                      "Movie time",
                                      style: TextStyle(color: Colors.brown),
                                    )
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
                    child: Center(
                      child: Container(
                        margin: EdgeInsets.symmetric(vertical: 24),
                        width: 210,
                        child: Stack(
                          children: [
                            Container(
                              decoration: BoxDecoration(
                              color: Colors.orange[100]
                              ),
                            ),
                            Container(
                              decoration: BoxDecoration(
                                gradient: LinearGradient(
                                  begin: FractionalOffset.topCenter,
                                  
                                  colors: [
                                    Colors.orange,
                                  ]
                                )
                              ),
                            )


                          ],
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 5,
                    child: Stack(
                      children: [
                        Positioned(
                          left: 48,
                          right: 48,
                          top: 48,
                          child: Container(
                            height: 180,
                            decoration: BoxDecoration(
                              color: Colors.red.withOpacity(0.4),
                              borderRadius: BorderRadius.circular(16),
                            ),
                          ),
                        ),
                        Positioned(
                          left: 32,
                          right: 32,
                          top: 24,
                          child: Container(
                            height: 180,
                            decoration: BoxDecoration(
                              color: Colors.purple.withOpacity(0.4),
                              borderRadius: BorderRadius.circular(16),

                            ),
                          ),
                        ),
                        Positioned(
                          left: 16,
                          right: 16,
                          top: 0,
                          child: Container(
                            height: 180,
                            decoration: BoxDecoration(
                              color: Colors.blue,
                              borderRadius: BorderRadius.circular(16),
                              gradient: LinearGradient(colors: [
                                Colors.orange[50],
                                Colors.blue[300],
                                Colors.blue
                              ],
                              begin: Alignment.topLeft,
                                end: Alignment.bottomRight
                              )
                            ),
                            padding: EdgeInsets.all(24),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text.rich(TextSpan(
                                  children: [
                                    TextSpan(text: "Living Room", style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 18
                                    )),
                                    TextSpan(text: " (2 devices)", style: TextStyle(
                                      color: Colors.white,
                                    ))
                                  ]
                                )),
                                SizedBox(height: 8,),
                                Row(
                                  children: [
                                    Container(
                                      height: 100,
                                      width: 80,
                                      child: Column(
                                        children: [
                                          Container(
                                            height: 72,
                                            width: 72,
                                            decoration: BoxDecoration(
                                              color: Colors.blue,
                                              borderRadius: BorderRadius.circular(16)
                                              
                                            ),
                                            child: Center(
                                              child: Icon(Icons.highlight,
                                              color: Colors.white,
                                              size: 32,),
                                            ),
                                          ),
                                          SizedBox(height: 8,),
                                          Text("Lights", style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            color: Colors.white
                                          ),)
                                        ],
                                      ),
                                    ),
                                    SizedBox(width: 8,),
                                    Container(
                                      height: 100,
                                      width: 80,
                                      child: Column(
                                        children: [
                                          Container(
                                            height: 72,
                                            width: 72,
                                            decoration: BoxDecoration(
                                                color: Colors.blue,
                                                borderRadius: BorderRadius.circular(16)

                                            ),
                                            child: Center(
                                              child: Icon(Icons.camera,
                                                color: Colors.white,
                                                size: 32,),
                                            ),
                                          ),
                                          SizedBox(height: 8,),
                                          Text("Cameras", style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              color: Colors.white
                                          ),)
                                        ],
                                      ),
                                    )
                                  ],
                                )
                              ],
                            ),

                          ),
                        )
                      ],
                    ),
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
