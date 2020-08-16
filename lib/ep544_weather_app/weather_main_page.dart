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
                    Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Container(
                        height: MediaQuery.of(context).size.height / 2.5,
                        width: double.infinity,
                        decoration: BoxDecoration(
                          color: Colors.white.withOpacity(.3),
                          borderRadius: BorderRadius.circular(24)
                        ),
                        child: Column(
                          children: [
                            Container(
                              height: 24,
                              width: 100,
                              decoration: BoxDecoration(
                                border: Border.all(color: Colors.white),
                                borderRadius: BorderRadius.circular(8),
                              ),
                              child: Center(
                                child: Text("STORMY", style: GoogleFonts.montserrat(
                                  color: Colors.white
                                ),),
                              ),
                            ),
                            Container(
                              height: 120,
                              decoration: BoxDecoration(
                                color: Colors.blue
                              ),
                              child: Row(
                                children: [
                                  Column(children: [
                                    Row(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Text("18", style: GoogleFonts.montserrat(
                                          fontSize: 84,
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold
                                        ),),
                                        Text("℃", style: GoogleFonts.montserrat(
                                            fontSize: 24,
                                            color: Colors.white,
                                            fontWeight: FontWeight.bold
                                        ),),

                                      ],
                                    ),
                                    Text("Feels like 24",  style: GoogleFonts.montserrat(
                                        fontSize: 14,
                                        color: Colors.white,
                                    ),)
                                  ],),
                                  VerticalDivider()
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              )),

        ],
      ),
    );
  }
}






















