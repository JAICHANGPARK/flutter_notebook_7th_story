import 'dart:ui';

import 'package:flutter/material.dart';

class WeatherMainPage extends StatefulWidget {
  @override
  _WeatherMainPageState createState() => _WeatherMainPageState();
}

class _WeatherMainPageState extends State<WeatherMainPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned(
            left: 0,
            top: 0,
            bottom: 0,
            right: 0,
            child: Container(
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image:
                          NetworkImage("https://cdn.pixabay.com/photo/2018/05/30/00/24/thunderstorm-3440450_960_720.jpg"),
                      fit: BoxFit.cover)),
              child: BackdropFilter(
                filter: ImageFilter.blur(
                  sigmaX: 5.0,
                  sigmaY: 5.0,
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
