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
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: NetworkImage("")
              )
            ),
          )
        ],
      ),
    );
  }
}
