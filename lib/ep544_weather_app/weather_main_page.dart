import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

const Color _textColor = Colors.white;

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
                      image: NetworkImage(
                          "https://cdn.pixabay.com/photo/2019/05/28/03/23/thunderstorm-4234254_960_720.jpg"),
                      fit: BoxFit.cover)),
              child: BackdropFilter(
                filter: ImageFilter.blur(
                  sigmaX: 3.0,
                  sigmaY: 3.0,
                ),
                child: Container(
                  color: Colors.black.withOpacity(0.2),
                ),
              ),
            ),
          ),
          Positioned(
              left: 0,
              right: 0,
              bottom: 0,
              top: 0,
              child: SafeArea(
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 24),
                      child: Row(
                        children: [
                          Icon(
                            Icons.access_time,
                            color: _textColor,
                            size: 12,
                          ),
                          SizedBox(
                            width: 8,
                          ),
                          Text("07:32 AM", style: GoogleFonts.montserrat(color: _textColor)),
                          Spacer(),
                          Icon(
                            Icons.edit_location,
                            color: _textColor,
                            size: 12,
                          ),
                          SizedBox(
                            width: 8,
                          ),
                          Text("New york", style: GoogleFonts.montserrat(color: _textColor))
                        ],
                      ),
                    ),
                    Container(
                      height: MediaQuery.of(context).size.height / 3,
                      decoration: BoxDecoration(
                        color: Colors.white
                      ),
                      child: Column(),
                    )
                  ],
                ),
              )),

        ],
      ),
    );
  }
}






















