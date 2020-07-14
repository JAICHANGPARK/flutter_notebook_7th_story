import 'package:flutter/material.dart';

import 'main_custom_clipper.dart';


class PMMainPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffffd34b), // 255 211 75
      body: Stack(
        children: [
          Positioned(
            left: 24,
            bottom: 24,
            child: Row(
              children: [
                Container(
                  height: 42,
                  width: 42,
                  decoration: BoxDecoration(
                    color: Colors.transparent,
                    shape: BoxShape.circle,
                    border: Border.all(color: Colors.white, width: 2)
                  ),
                  child: Center(
                    child: Icon(Icons.keyboard_arrow_left, color: Colors.white,),
                  ),
                ),
                SizedBox(width: 16,),
                Container(
                  height: 52,
                  width: 52,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      shape: BoxShape.circle,
                      border: Border.all(color: Colors.white, width: 2)
                  ),
                  child: Center(
                    child: Icon(Icons.keyboard_arrow_right, color: Colors.green,),
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            left: 16,
            right: 16,
            bottom: 48,
            top: 24,
            child: ClipPath(
              clipper: MainCustomClipper(),
              child: Container(
                decoration: BoxDecoration(
                  color: Color(0xff00A15D ) // 0 161 93
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
















